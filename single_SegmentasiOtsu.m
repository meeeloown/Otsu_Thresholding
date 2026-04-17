clc;
clear;

% SEGMENTASI OBJEK PADA CITRA IKAN MENGGUNAKAN METODE OTSU THRESHOLDING

imagePath = 'C:\VScode\segmentasiOtsu_PCD\dataset\Gambar (12).png'; 
outputFolder = 'C:\VScode\segmentasiOtsu_PCD\Output_otsu'; 
groundTruthPath = 'C:\VScode\segmentasiOtsu_PCD\ground truth\Gambar (12).png';

% Membaca gambar input
originalImage = imread(imagePath);

% Konversi ke grayscale jika gambar RGB
if size(originalImage, 3) == 3
    grayImage = rgb2gray(originalImage);
else
    grayImage = originalImage;
end

% Otsu Thresholding
thresholdLevel = graythresh(grayImage); % Nilai ambang (0-1)
binaryImage = imbinarize(grayImage, thresholdLevel);

% Invers hasil segmentasi (untuk membalik gambar)
binaryImage = imcomplement(binaryImage);

% Membaca citra ground truth
groundTruthImage = imread(groundTruthPath);

% Menghitung True Positives (TP), True Negatives (TN), False Positives (FP), dan False Negatives (FN)
TP = sum((binaryImage == 1) & (groundTruthImage == 1)); % Piksel benar-benar objek di kedua citra
TN = sum((binaryImage == 0) & (groundTruthImage == 0)); % Piksel bukan objek di kedua citra
FP = sum((binaryImage == 1) & (groundTruthImage == 0)); % Piksel objek pada hasil segmentasi tapi bukan di ground truth
FN = sum((binaryImage == 0) & (groundTruthImage == 1)); % Piksel bukan objek pada hasil segmentasi tapi objek di ground truth

% Menghitung akurasi dengan rumus baru
accuracy = (TP + TN) / (TP + FP + TN + FN) * 100;
fprintf('Akurasi Segmentasi: %.2f%%\n', accuracy);

% Menyimpan hasil segmentasi ke folder output
[~, imageName, ext] = fileparts(imagePath); 
outputFileName = fullfile(outputFolder, ['Segmentasi_', imageName, ext]);
imwrite(binaryImage, outputFileName);

% Menampilkan hasil segmentasi, citra asli, dan ground truth
figure('Name', 'Segmentasi Otsu Thresholding', 'NumberTitle', 'off');
subplot(1, 3, 1);
imshow(originalImage);
title('Citra Asli');
subplot(1, 3, 2);
imshow(binaryImage);
title(sprintf('Segmentasi Otsu\nAkurasi: %.2f%%', accuracy));
subplot(1, 3, 3);
imshow(groundTruthImage);
title('Ground Truth');

fprintf('Nilai Ambang Otsu: %.4f\n', thresholdLevel);

disp('Proses segmentasi selesai');
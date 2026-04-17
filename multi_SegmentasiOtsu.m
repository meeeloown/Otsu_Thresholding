clc;
clear;

% SEGMENTASI OBJEK PADA CITRA DATASET MENGGUNAKAN METODE OTSU THRESHOLDING

imageFolder = 'C:\VScode\segmentasiOtsu_PCD\dataset'; % Ganti path folder Anda
outputFolder = 'C:\VScode\segmentasiOtsu_PCD\Output_otsu'; % Folder untuk menyimpan hasil
groundTruthFolder = 'C:\VScode\segmentasiOtsu_PCD\ground truth'; % Folder untuk ground truth

% Membaca semua file gambar dalam folder dataset dan ground truth
imageFiles = dir(fullfile(imageFolder, '*.png')); % Membaca semua file PNG dalam dataset
groundTruthFiles = dir(fullfile(groundTruthFolder, '*.png')); % Membaca semua file PNG dalam ground truth

% Mengurutkan gambar berdasarkan angka dalam nama file
numbers = cellfun(@(x) str2num(x{1}), regexp({imageFiles.name}, '\d+', 'match'), 'UniformOutput', false);
numbers(cellfun(@isempty, numbers)) = {0}; % Ganti nilai kosong dengan 0
numbers = cell2mat(numbers); % Ubah menjadi array angka
[~, idx] = sort(numbers); % Mengurutkan gambar berdasarkan angka dalam nama file
imageFiles = imageFiles(idx); % Mengurutkan array file sesuai urutan angka
groundTruthFiles = groundTruthFiles(idx); % Mengurutkan ground truth sesuai urutan gambar

% Membuat figure dengan ukuran besar
figure('Name', 'Segmentasi Dataset - Otsu Thresholding', 'NumberTitle', 'off');
set(gcf, 'Position', [100, 100, 1200, 600]); % Ukuran figure lebih besar
sgtitle('Segmentasi Citra Menggunakan Otsu Thresholding', 'FontSize', 16);

% Menghitung jumlah baris dan kolom untuk subplot
numImages = length(imageFiles); % Jumlah gambar dalam dataset
numRows = ceil(numImages / 5); % Jumlah baris
numCols = 6; % Jumlah kolom

% Memproses setiap gambar dalam folder
for i = 1:numImages
    % Membaca gambar input
    imgPath = fullfile(imageFolder, imageFiles(i).name);
    originalImage = imread(imgPath);
    
    % Konversi ke grayscale jika gambar RGB
    if size(originalImage, 3) == 3
        grayImage = rgb2gray(originalImage);
    else
        grayImage = originalImage; % Jika gambar sudah grayscale
    end
    
    % Otsu Thresholding
    thresholdLevel = graythresh(grayImage); % Nilai ambang optimal (0-1)
    binaryImage = imbinarize(grayImage, thresholdLevel);
    
    % Invers hasil segmentasi (membalik hasil segmentasi)
    binaryImage = imcomplement(binaryImage);
    
    % Membaca citra ground truth
    groundTruthPath = fullfile(groundTruthFolder, groundTruthFiles(i).name);
    groundTruthImage = imread(groundTruthPath); % Tidak membalik ground truth
    
    % Menghitung TP, TN, FP, FN
    TP = sum((binaryImage == 1) & (groundTruthImage == 1)); % Piksel benar-benar objek di kedua citra
    TN = sum((binaryImage == 0) & (groundTruthImage == 0)); % Piksel bukan objek di kedua citra
    FP = sum((binaryImage == 1) & (groundTruthImage == 0)); % Piksel objek pada hasil segmentasi tapi bukan di ground truth
    FN = sum((binaryImage == 0) & (groundTruthImage == 1)); % Piksel bukan objek pada hasil segmentasi tapi objek di ground truth

    % Menghitung akurasi dengan rumus baru
    accuracy = (TP + TN) / (TP + FP + TN + FN) * 100;
    fprintf('%s, Akurasi: %.2f%%\n', imageFiles(i).name, accuracy);

    % Menyimpan hasil segmentasi ke folder output
    outputFileName = fullfile(outputFolder, ['Segmentasi_', imageFiles(i).name]);
    imwrite(binaryImage, outputFileName);
    
    % Menampilkan gambar hasil segmentasi pada subplot
    subplot(numRows, numCols, i); % Membuat subplot sesuai jumlah gambar
    imshow(binaryImage, 'InitialMagnification', 100); % Memperbesar gambar dengan magnifikasi
    axis off; % Menonaktifkan sumbu agar gambar lebih jelas
    title(sprintf('%s\nAkurasi: %.2f%%', imageFiles(i).name, accuracy), ...
          'Interpreter', 'none', 'FontSize', 11, 'FontWeight', 'bold');
    
    % Menampilkan nilai ambang di Command Window
    fprintf('%s, Nilai Ambang: %.4f\n', imageFiles(i).name, thresholdLevel);
end

disp('Proses segmentasi selesai');
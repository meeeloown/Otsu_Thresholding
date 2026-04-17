% Folder penyimpanan gambar
imageFolder = 'C:\VScode\segmentasiOtsu_PCD\dataset'; % Ganti path dengan folder Anda

% Membaca semua file gambar di folder
imageFiles = dir(fullfile(imageFolder, '*.png')); % Sesuaikan dengan format gambar

numbers = regexp({imageFiles.name}, '\d+', 'match'); % Ekstrak angka dari nama file
numbers = cellfun(@str2num, [numbers{:}]); % Mengonversi ke angka
[~, idx] = sort(numbers); % Mengurutkan gambar berdasarkan angka dalam nama file
imageFiles = imageFiles(idx); % Mengurutkan array file sesuai urutan angk

% Jumlah gambar dalam database
numImages = length(imageFiles);

% Menentukan jumlah baris dan kolom untuk grid
numRows = 3; % Atur jumlah baris
numCols = 10; % Atur jumlah kolom

% Membuat figure dengan ukuran lebih besar
figure('Name', 'Image Database', 'NumberTitle', 'off', 'Position', [100, 100, 1200, 600]);

% Menampilkan setiap gambar di grid
for i = 1:numImages
    % Membaca gambar
    img = imread(fullfile(imageFolder, imageFiles(i).name));
    
    % Menampilkan gambar di subplot dengan jarak antar gambar lebih besar
    subplot(numRows, numCols, i, 'Align'); % 'Align' membuat lebih rapi
    imshow(img);
    title(imageFiles(i).name, 'Interpreter', 'none', 'FontSize', 8);
end

% Menambahkan judul besar untuk seluruh figure
sgtitle('Image Database', 'FontSize', 14, 'FontWeight', 'bold');

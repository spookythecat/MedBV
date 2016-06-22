close all

data = struct2cell(load('handdata.mat'));
% 1 .. aligned (shapes)
% 2 .. images
% 3 .. landmarks
% 4 .. masks

%% Task 1
shapes = data{1};
%shapeModel(shapes);

%% Task 2
% image = data{2}{1};
% features = computeFeatures(image);
%features = cache(@computeFeatures,image);
% figure;
% imagesc(reshape(features(1,:),size(image,1),size(image,2)));
% title('Feature 1 Grauwerte');
% figure;
% imagesc(reshape(features(2,:),size(image,1),size(image,2)));
% title('Feature 2 Gradienten X');
% figure;
% imagesc(reshape(features(3,:),size(image,1),size(image,2)));
% title('Feature 3 Gradienten Y');
% figure;
% imagesc(reshape(features(4,:),size(image,1),size(image,2)));
% title('Feature 4 Gradientenstärke');
% figure;
% imagesc(reshape(features(5,:),size(image,1),size(image,2)));
% title('Feature 5 Haar Like Grauwertbild');
% figure;
% imagesc(reshape(features(25,:),size(image,1),size(image,2)));
% title('Feature 6 Haar Like Gradientenstärke');
% figure;
% imagesc(reshape(features(45,:),size(image,1),size(image,2)));
% title('Feature 7 X Koordinaten');
% figure;
% imagesc(reshape(features(46,:),size(image,1),size(image,2)));
% title('Feature 8 Y Koordinaten');

%% Task 3
for i=1:30
    result = train(data{2}{i}, data{4}{i});
    figure;
    plot(result.OOBPermutedVarDeltaError);
end

%result = train(data{2}{1}, data{4}{1});
 
clear;

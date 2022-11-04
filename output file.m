clc
close all
%load('Alexnet_72p96.mat')
img = imread('fear2.jpg');
%imshow(img)

%face detection - initialization loading the weights
faceDetector = vision.CascadeObjectDetector;
%img = readFrame(vid);
 %Detectfaces
   bbox = step(faceDetector,img);
 figure,imshow(img)

 if~isempty(bbox)
                   bbox = bbox(1,:);

     %plotbox
     rectangle('Position',bbox,'edgecolor','b','LineWidth',5);

     FaceCropped = imcrop(img,bbox);
 end

 Face_Resized = imresize(FaceCropped,[227 227]);

 [YPred,probs]=classify(net,Face_Resized);

 a=nominal(YPred);
 pred_str=cellstr(a);
 position = [0 0;];

 box_color={'red'};
 RGB = insertText(img,position,pred_str,'FontSize',18,'BoxColor',... 
     box_color,'BoxOpacity',0.4,'TextColor','Black');
 figure,imshow(RGB)

  rectangle('Position',bbox,'edgecolor','b','LineWidth',5);
clear variables

load('C:\Users\hans9\OneDrive\Documents\Hans\Etude\Cours\Doctorat\Etudes\Etude 03 - Entrainement\Data\CAPS\RES\resPAPEcmj.mat')
load('C:\Users\hans9\OneDrive\Documents\Hans\Etude\Cours\Doctorat\Etudes\Etude 03 - Entrainement\Data\CAPS\RES\resPAPEdjBS.mat')
load('C:\Users\hans9\OneDrive\Documents\Hans\Etude\Cours\Doctorat\Etudes\Etude 03 - Entrainement\Data\CAPS\RES\resPAPEdjCR.mat')
load('C:\Users\hans9\OneDrive\Documents\Hans\Etude\Cours\Doctorat\Etudes\Etude 03 - Entrainement\Data\CAPS\RES\resPAPEsj.mat')

% Serie
% Pre
PDCSeriepre = table;
PDCSeriepre.cmjCON =  PAPEcmj.Serie.Pre.CON.PreJumps.PDC(1:11);
PDCSeriepre.cmjMVC =  PAPEcmj.Serie.Pre.MVC.PreJumps.PDC(1:11);
PDCSeriepre.sjCON =  PAPEsj.Serie.Pre.CON.PreJumps.PDC(1:11);
PDCSeriepre.sjMVC =  PAPEsj.Serie.Pre.MVC.PreJumps.PDC(1:11);
PDCSeriepre.djCON =  PAPEdjBS.Serie.Pre.CON.PreJumps.PDC(1:11);
PDCSeriepre.djMVCBS =  PAPEdjBS.Serie.Pre.MVC.PreJumps.PDC(1:11);
PDCSeriepre.djMVCCR =  PAPEdjCR.Serie.Pre.MVC.PreJumps.PDC(1:11);
PDCSeriepre = standardizeMissing(PDCSeriepre, 0);
meanPDCSeriepre = mean(PDCSeriepre{:,1:end},2,'omitnan');
% Mid
PDCSeriemid = table;
PDCSeriemid.cmjCON =  PAPEcmj.Serie.Mid.CON.PreJumps.PDC(1:11);
PDCSeriemid.cmjMVC =  PAPEcmj.Serie.Mid.MVC.PreJumps.PDC(1:11);
PDCSeriemid.sjCON =  PAPEsj.Serie.Mid.CON.PreJumps.PDC(1:11);
PDCSeriemid.sjMVC =  PAPEsj.Serie.Mid.MVC.PreJumps.PDC(1:11);
PDCSeriemid.djCON =  PAPEdjBS.Serie.Mid.CON.PreJumps.PDC(1:11);
PDCSeriemid.djMVCBS =  PAPEdjBS.Serie.Mid.MVC.PreJumps.PDC(1:11);
PDCSeriemid.djMVCCR =  PAPEdjCR.Serie.Mid.MVC.PreJumps.PDC(1:11);
PDCSeriemid = standardizeMissing(PDCSeriemid, 0);
meanPDCSeriemid = mean(PDCSeriemid{:,1:end},2,'omitnan');

% Post
PDCSeriepost = table;
PDCSeriepost.cmjCON =  PAPEcmj.Serie.Post.CON.PreJumps.PDC(1:11);
PDCSeriepost.cmjMVC =  PAPEcmj.Serie.Post.MVC.PreJumps.PDC(1:11);
PDCSeriepost.sjCON =  PAPEsj.Serie.Post.CON.PreJumps.PDC(1:11);
PDCSeriepost.sjMVC =  PAPEsj.Serie.Post.MVC.PreJumps.PDC(1:11);
PDCSeriepost.djCON =  PAPEdjBS.Serie.Post.CON.PreJumps.PDC(1:11);
PDCSeriepost.djMVCBS =  PAPEdjBS.Serie.Post.MVC.PreJumps.PDC(1:11);
PDCSeriepost.djMVCCR =  PAPEdjCR.Serie.Post.MVC.PreJumps.PDC(1:11);
PDCSeriepost = standardizeMissing(PDCSeriepost, 0);
meanPDCSeriepost = mean(PDCSeriepost{:,1:end},2,'omitnan');

meanPDCSerie = []
for n = 1 : length(meanPDCSeriepre)
    meanPDCSerie(end + 1,1) = meanPDCSeriepre(n);
    meanPDCSerie(end + 1,1) = meanPDCSeriemid(n);
    meanPDCSerie(end + 1,1) = meanPDCSeriepost(n);
end

% Block
% Pre
PDCBlockpre = table;
PDCBlockpre.cmjCON =  PAPEcmj.Block.Pre.CON.PreJumps.PDC(1:12);
PDCBlockpre.cmjMVC =  PAPEcmj.Block.Pre.MVC.PreJumps.PDC(1:12);
PDCBlockpre.sjCON =  PAPEsj.Block.Pre.CON.PreJumps.PDC(1:12);
PDCBlockpre.sjMVC =  PAPEsj.Block.Pre.MVC.PreJumps.PDC(1:12);
PDCBlockpre.djCON =  PAPEdjBS.Block.Pre.CON.PreJumps.PDC(1:12);
PDCBlockpre.djMVCBS =  PAPEdjBS.Block.Pre.MVC.PreJumps.PDC(1:12);
PDCBlockpre.djMVCCR =  PAPEdjCR.Block.Pre.MVC.PreJumps.PDC(1:12);
PDCBlockpre = standardizeMissing(PDCBlockpre, 0);
meanPDCBlockpre = mean(PDCBlockpre{:,1:end},2,'omitnan');
% Mid
PDCBlockmid = table;
PDCBlockmid.cmjCON =  PAPEcmj.Block.Mid.CON.PreJumps.PDC(1:12);
PDCBlockmid.cmjMVC =  PAPEcmj.Block.Mid.MVC.PreJumps.PDC(1:12);
PDCBlockmid.sjCON =  PAPEsj.Block.Mid.CON.PreJumps.PDC(1:12);
PDCBlockmid.sjMVC =  PAPEsj.Block.Mid.MVC.PreJumps.PDC(1:12);
PDCBlockmid.djCON =  PAPEdjBS.Block.Mid.CON.PreJumps.PDC(1:12);
PDCBlockmid.djMVCBS =  PAPEdjBS.Block.Mid.MVC.PreJumps.PDC(1:12);
PDCBlockmid.djMVCCR =  PAPEdjCR.Block.Mid.MVC.PreJumps.PDC(1:12);
PDCBlockmid = standardizeMissing(PDCBlockmid, 0);
meanPDCBlockmid = mean(PDCBlockmid{:,1:end},2,'omitnan');

% Post
PDCBlockpost = table;
PDCBlockpost.cmjCON =  PAPEcmj.Block.Post.CON.PreJumps.PDC(1:12);
PDCBlockpost.cmjMVC =  PAPEcmj.Block.Post.MVC.PreJumps.PDC(1:12);
PDCBlockpost.sjCON =  PAPEsj.Block.Post.CON.PreJumps.PDC(1:12);
PDCBlockpost.sjMVC =  PAPEsj.Block.Post.MVC.PreJumps.PDC(1:12);
PDCBlockpost.djCON =  PAPEdjBS.Block.Post.CON.PreJumps.PDC(1:12);
PDCBlockpost.djMVCBS =  PAPEdjBS.Block.Post.MVC.PreJumps.PDC(1:12);
PDCBlockpost.djMVCCR =  PAPEdjCR.Block.Post.MVC.PreJumps.PDC(1:12);
PDCBlockpost = standardizeMissing(PDCBlockpost, 0);
meanPDCBlockpost = mean(PDCBlockpost{:,1:end},2,'omitnan');

meanPDCBlock = []
for n = 1 : length(meanPDCBlockpre)
    meanPDCBlock(end + 1,1) = meanPDCBlockpre(n);
    meanPDCBlock(end + 1,1) = meanPDCBlockmid(n);
    meanPDCBlock(end + 1,1) = meanPDCBlockpost(n);
end

% CON
% Pre
PDCCONpre = table;
PDCCONpre.cmjCON =  PAPEcmj.CON.Pre.CON.PreJumps.PDC(1:12);
PDCCONpre.cmjMVC =  PAPEcmj.CON.Pre.MVC.PreJumps.PDC(1:12);
PDCCONpre.sjCON =  PAPEsj.CON.Pre.CON.PreJumps.PDC(1:12);
PDCCONpre.sjMVC =  PAPEsj.CON.Pre.MVC.PreJumps.PDC(1:12);
PDCCONpre.djCON =  PAPEdjBS.CON.Pre.CON.PreJumps.PDC(1:12);
PDCCONpre.djMVCBS =  PAPEdjBS.CON.Pre.MVC.PreJumps.PDC(1:12);
PDCCONpre.djMVCCR =  PAPEdjCR.CON.Pre.MVC.PreJumps.PDC(1:12);
PDCCONpre = standardizeMissing(PDCCONpre, 0);
meanPDCCONpre = mean(PDCCONpre{:,1:end},2,'omitnan');

% Post
PDCCONpost = table;
PDCCONpost.cmjCON =  PAPEcmj.CON.Post.CON.PreJumps.PDC(1:12);
PDCCONpost.cmjMVC =  PAPEcmj.CON.Post.MVC.PreJumps.PDC(1:12);
PDCCONpost.sjCON =  PAPEsj.CON.Post.CON.PreJumps.PDC(1:12);
PDCCONpost.sjMVC =  PAPEsj.CON.Post.MVC.PreJumps.PDC(1:12);
PDCCONpost.djCON =  PAPEdjBS.CON.Post.CON.PreJumps.PDC(1:12);
PDCCONpost.djMVCBS =  PAPEdjBS.CON.Post.MVC.PreJumps.PDC(1:12);
PDCCONpost.djMVCCR =  PAPEdjCR.CON.Post.MVC.PreJumps.PDC(1:12);
PDCCONpost = standardizeMissing(PDCCONpost, 0);
meanPDCCONpost = mean(PDCCONpost{:,1:end},2,'omitnan');

meanPDCCON = []
for n = 1 : length(meanPDCCONpre)
    meanPDCCON(end + 1,1) = meanPDCCONpre(n);
    meanPDCCON(end + 1,1) = NaN;
    meanPDCCON(end + 1,1) = meanPDCCONpost(n);
end
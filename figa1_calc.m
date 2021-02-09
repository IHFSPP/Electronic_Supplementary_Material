clear all
close all
disp('Open figa1_workspace.mat')
uiopen()

imp = predictorImportance(tpt_nosyn.RegressionEnsemble)/sum(predictorImportance(tpt_nosyn.RegressionEnsemble));
figure(1);
bar(imp);
bar(categorical(tpt_nosyn.RegressionEnsemble.PredictorNames),imp);
title('Relative importance of various predictors (Y is TPT_{nosyn})');
clear imp;

imp = predictorImportance(tpt_syn.RegressionEnsemble)/sum(predictorImportance(tpt_syn.RegressionEnsemble));
figure(2);
bar(imp);
bar(categorical(tpt_syn.RegressionEnsemble.PredictorNames),imp);
title('Relative importance of various predictors (Y is TPT_{syn})');
clear imp;

imp = predictorImportance(tpt_diff.RegressionEnsemble)/sum(predictorImportance(tpt_diff.RegressionEnsemble));
figure(3);
bar(imp);
bar(categorical(tpt_diff.RegressionEnsemble.PredictorNames),imp);
title('Relative importance of various predictors (Y is TPT_{diff})');
clear imp;
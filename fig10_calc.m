clear all
close all
disp('Open fig4_workspace.mat')
uiopen()

imp = predictorImportance(tpc_nosyn.RegressionEnsemble)/sum(predictorImportance(tpc_nosyn.RegressionEnsemble));
figure(1);
bar(imp);
bar(categorical(tpc_nosyn.RegressionEnsemble.PredictorNames),imp);
title('Relative importance of various predictors (Y is TPC_{nosyn})');
clear imp;

imp = predictorImportance(tpc_syn.RegressionEnsemble)/sum(predictorImportance(tpc_syn.RegressionEnsemble));
figure(2);
bar(imp);
bar(categorical(tpc_syn.RegressionEnsemble.PredictorNames),imp);
title('Relative importance of various predictors (Y is TPC_{syn})');
clear imp;

imp = predictorImportance(tpc_diff.RegressionEnsemble)/sum(predictorImportance(tpc_diff.RegressionEnsemble));
figure(3);
bar(imp);
bar(categorical(tpc_diff.RegressionEnsemble.PredictorNames),imp);
title('Relative importance of various predictors (Y is TPC_{diff})');
clear imp;
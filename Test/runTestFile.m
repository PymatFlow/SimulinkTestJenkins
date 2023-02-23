clear
import mlreportgen.dom.*;
import mlreportgen.report.*

runner = matlab.unittest.TestRunner.withTextOutput();

TestFile_path = 'MainTest.mldatx';

result = sltest.testmanager.load(TestFile_path);

resultset = sltest.testmanager.run;

tfr = getTestFileResults(resultset);

reportFilePath = 'TestReport.pdf';

sltest.testmanager.report(tfr,reportFilePath,...
    'Author','Jeegar',...
    'Title','Test of mine',...
    'IncludeMLVersion',true,...
    'IncludeTestResults',int32(0),...
    'IncludeSimulationSignalPlots',true,...
    'NumPlotColumnsPerPage',2,...
    'LaunchReport',false);

sltest.testmanager.clearResults;
sltest.testmanager.clear;


% 
% 
% suite = testsuite(testName);
% 
% runner.addPlugin(sltest.plugins.MATLABTestCaseIntegrationPlugin());
% 
% 
% % testFile = sltest.testmanager.TestFile(testFileLoc);
% 
% %Stream output to Logs in Test Manager Result Set
% streamOutput = sltest.plugins.ToTestManagerLog();
% diagnosticsOutputPlugin = matlab.unittest.plugins.DiagnosticsOutputPlugin(streamOutput,'IncludingPassingDiagnostics',true);
% runner.addPlugin(diagnosticsOutputPlugin);
% 
% %Add plugin to enable Model Coverage on any models passed to the
% %"simulate" method in sltest.TestCase
% import sltest.plugins.coverage.CoverageMetrics
% % covMetrics = CoverageMetrics(varargin{:});
% % runner.addPlugin(sltest.plugins.ModelCoveragePlugin('Collecting',covMetrics));
% result = runner.run(suite);
% 
% 
% % Import Test Manager results file
% % sltest.testmanager.load(testName);
% % result = sltest.testmanager.run(testName);
% filePath = fullfile('testreport.pdf');
% result = sltest.testmanager.importResults(testName);
% 
% sltest.testmanager.report(result,filePath,...
%     'Author','Jenkins',...
%     'Title','EMCK Testsuite',...
%     'IncludeMLVersion',true,...
%     'IncludeTestResults',false,...
%     'IncludeSimulationSignalPlots',false,...
%     'IncludeComparisonSignalPlots',true,...
%     'IncludeErrorMessage',false,...
%     'NumPlotColumnsPerPage',1, ...
%     'LaunchReport',false);
% 
% 

% sltest.testmanager.clearResults;
% sltest.testmanager.clear;
% cleanTap;

%==========================================================================
% JOB MAIN
%==========================================================================

%--------------------------------------------------------------------------
% Initialize
%--------------------------------------------------------------------------

date_stamp = datestr(now,'yymmdd_HHMM');

jobs = {'inclinedCrack','edgeCrack','twoEdgeCracks'};

%--------------------------------------------------------------------------
% Run job cases
%--------------------------------------------------------------------------

for i_job = 1:length(jobs)
    
    close all
    
    % crack load file (.mat)
    job_crackID = jobs{i_job};
    
    %----------------------------------------------------------------------
    % Give job-case a unique ID
    % otherwise: job_crackID = job@<date_stamp>;
    %----------------------------------------------------------------------
    
    job_subID = sprintf('example_%s',job_crackID);
    
    %----------------------------------------------------------------------
    % Call main (XFEM) script
    %----------------------------------------------------------------------
    
    call_main
    
    %----------------------------------------------------------------------
    % Plot some more stuff
    %----------------------------------------------------------------------
    
    plot_SIF_crack = 1;
    plot_SIF_cktip = 2;
    PlotSIF
    
    fprintf('\nPausing for 3 (sec.)\n\n')
    pause(3)
    
end

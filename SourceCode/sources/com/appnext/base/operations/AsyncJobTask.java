package com.appnext.base.operations;

import android.app.job.JobParameters;
import android.os.AsyncTask;
/* loaded from: classes.dex */
public class AsyncJobTask extends AsyncTask<Void, Void, Integer> {
    private final JobParameters jobParameters;
    private final AppnextOperationJobService jobService;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Integer num) {
    }

    public AsyncJobTask(AppnextOperationJobService appnextOperationJobService, JobParameters jobParameters) {
        this.jobService = appnextOperationJobService;
        this.jobParameters = jobParameters;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Integer doInBackground(Void... voidArr) {
        return Integer.valueOf(this.jobService.onRunJob(this.jobParameters));
    }

    public void finishJob() {
        this.jobService.jobFinished(this.jobParameters, false);
    }
}

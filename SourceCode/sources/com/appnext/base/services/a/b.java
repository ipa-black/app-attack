package com.appnext.base.services.a;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.PersistableBundle;
import androidx.work.PeriodicWorkRequest;
import com.appnext.base.services.OperationJobService;
import com.appodeal.ads.modules.common.internal.Constants;
import java.util.List;
/* loaded from: classes.dex */
public final class b extends c {
    private static final int eF = 900000;
    private JobScheduler eG;
    private Context mContext;

    public b(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            this.mContext = applicationContext;
            this.eG = (JobScheduler) applicationContext.getSystemService("jobscheduler");
        } catch (Throwable unused) {
        }
    }

    @Override // com.appnext.base.services.a.c
    public final void b(com.appnext.base.a.b.c cVar) {
        try {
            this.eG.cancel(cVar.ap().hashCode());
        } catch (Throwable unused) {
        }
    }

    @Override // com.appnext.base.services.a.c
    public final void g(List<com.appnext.base.a.b.c> list) {
        try {
            this.eG.cancelAll();
        } catch (Throwable unused) {
        }
    }

    @Override // com.appnext.base.services.a.c
    protected final void a(com.appnext.base.a.b.c cVar, long j, long j2) {
        a(cVar, j, j2, null);
    }

    @Override // com.appnext.base.services.a.c
    protected final void b(com.appnext.base.a.b.c cVar, long j, long j2) {
        a(cVar, j, Constants.MILLIS_IN_DAY, null);
    }

    @Override // com.appnext.base.services.a.c
    protected final void a(com.appnext.base.a.b.c cVar, long j, Bundle bundle) {
        a(cVar, j, 0L, bundle);
    }

    private void a(com.appnext.base.a.b.c cVar, long j, long j2, Bundle bundle) {
        PersistableBundle a2;
        try {
            JobInfo.Builder requiredNetworkType = new JobInfo.Builder(cVar.ap().hashCode(), new ComponentName(this.mContext, OperationJobService.class)).setPersisted(true).setRequiredNetworkType(1);
            PersistableBundle e2 = com.appnext.base.b.c.e(cVar);
            if (bundle != null && (a2 = com.appnext.base.b.a.a(bundle)) != null) {
                e2.putPersistableBundle(c.eH, a2);
            }
            if (j2 > 0 && j2 < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
                j2 = 900000;
            }
            if (j > System.currentTimeMillis()) {
                requiredNetworkType.setMinimumLatency(Math.max(j - System.currentTimeMillis(), 60000L));
                e2.putString(OperationJobService.SCHEDULE, "true");
            } else if (j2 > 0 && j2 >= PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
                requiredNetworkType.setPeriodic(j2);
            }
            requiredNetworkType.setExtras(e2);
            this.eG.schedule(requiredNetworkType.build());
        } catch (Throwable unused) {
        }
    }
}

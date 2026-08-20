package com.appnext.base.services;

import android.app.job.JobParameters;
import android.os.Bundle;
import android.os.PersistableBundle;
import com.appnext.base.a.b.c;
import com.appnext.base.b.e;
import com.appnext.base.b.i;
import com.appnext.base.operations.AppnextOperationJobService;
import com.appnext.base.operations.a;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class OperationJobService extends AppnextOperationJobService {
    public static final String SCHEDULE = "schedule";

    @Override // com.appnext.base.operations.AppnextOperationJobService
    public int onRunJob(final JobParameters jobParameters) {
        final CountDownLatch countDownLatch;
        PersistableBundle extras;
        Bundle bundle;
        c cVar;
        PersistableBundle persistableBundle;
        try {
            countDownLatch = new CountDownLatch(1);
            e.init(getApplicationContext());
            i.aR().init(getApplicationContext());
            extras = jobParameters.getExtras();
            bundle = null;
            if (extras == null) {
                cVar = null;
            } else {
                cVar = new c(extras.getString("status", ""), extras.getString(com.appnext.base.b.c.eQ, ""), extras.getString(com.appnext.base.b.c.eR, ""), extras.getString(com.appnext.base.b.c.eO, ""), extras.getString(com.appnext.base.b.c.eP, ""), extras.getString("key", ""), extras.getString("service_key", ""), extras.getString("data", null));
            }
        } catch (Throwable unused) {
        }
        if (cVar == null) {
            b(jobParameters);
            return 0;
        } else if (a(extras)) {
            b(jobParameters);
            com.appnext.base.services.b.a.d(getApplicationContext()).a(cVar, true);
            return 0;
        } else {
            if (extras != null && (persistableBundle = extras.getPersistableBundle(com.appnext.base.services.a.c.eH)) != null) {
                bundle = new Bundle();
                bundle.putAll(persistableBundle);
            }
            try {
                new b().a(getApplicationContext(), cVar.getKey(), null, bundle, null, new a.InterfaceC0092a() { // from class: com.appnext.base.services.OperationJobService.1
                    @Override // com.appnext.base.operations.a.InterfaceC0092a
                    public final void aH() {
                        OperationJobService.this.b(jobParameters);
                        countDownLatch.countDown();
                    }

                    @Override // com.appnext.base.operations.a.InterfaceC0092a
                    public final void b(com.appnext.base.a aVar) {
                        OperationJobService.this.b(jobParameters);
                        countDownLatch.countDown();
                    }
                });
                countDownLatch.await(10L, TimeUnit.SECONDS);
            } catch (Throwable unused2) {
            }
            return 0;
        }
    }

    private static boolean a(PersistableBundle persistableBundle) {
        if (persistableBundle == null) {
            return false;
        }
        try {
            return Boolean.valueOf(persistableBundle.getString(SCHEDULE, "false")).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JobParameters jobParameters) {
        try {
            a(jobParameters);
        } catch (Throwable unused) {
        }
    }
}

package com.yandex.metrica.appsetid;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Object f12352a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final List<OnCompleteListener<AppSetIdInfo>> f12353b = new ArrayList();

    /* loaded from: classes3.dex */
    public static final class a implements OnCompleteListener<AppSetIdInfo> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.appsetid.a f12355b;

        a(com.yandex.metrica.appsetid.a aVar) {
            this.f12355b = aVar;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public void onComplete(Task<AppSetIdInfo> task) {
            c cVar;
            synchronized (b.this.f12352a) {
                b.this.f12353b.remove(this);
            }
            if (task.isSuccessful()) {
                com.yandex.metrica.appsetid.a aVar = this.f12355b;
                AppSetIdInfo result = task.getResult();
                Intrinsics.checkNotNullExpressionValue(result, "completedTask.result");
                String id = result.getId();
                b bVar = b.this;
                AppSetIdInfo result2 = task.getResult();
                Intrinsics.checkNotNullExpressionValue(result2, "completedTask.result");
                int scope = result2.getScope();
                bVar.getClass();
                if (scope == 1) {
                    cVar = c.APP;
                } else if (scope != 2) {
                    cVar = c.UNKNOWN;
                } else {
                    cVar = c.DEVELOPER;
                }
                aVar.a(id, cVar);
                return;
            }
            this.f12355b.a(task.getException());
        }
    }

    @Override // com.yandex.metrica.appsetid.d
    public void a(Context context, com.yandex.metrica.appsetid.a aVar) throws Throwable {
        AppSetIdClient client = AppSet.getClient(context);
        Intrinsics.checkNotNullExpressionValue(client, "AppSet.getClient(context)");
        Task<AppSetIdInfo> appSetIdInfo = client.getAppSetIdInfo();
        Intrinsics.checkNotNullExpressionValue(appSetIdInfo, "client.appSetIdInfo");
        a aVar2 = new a(aVar);
        synchronized (this.f12352a) {
            this.f12353b.add(aVar2);
        }
        appSetIdInfo.addOnCompleteListener(aVar2);
    }
}

package com.appodeal.ads.utils;

import android.content.Context;
import android.text.TextUtils;
import com.appodeal.ads.h5;
import com.appodeal.ads.n5;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class q {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ boolean f7815b = true;

    /* renamed from: a  reason: collision with root package name */
    public String f7816a;

    /* loaded from: classes2.dex */
    public class a implements UnifiedAdCallbackClickTrackListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ b f7817a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Context f7818b;

        public a(b bVar, Context context) {
            this.f7817a = bVar;
            this.f7818b = context;
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener
        public final void onTrackError() {
            this.f7817a.onHandleError();
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener
        public final void onTrackSuccess(JSONObject jSONObject) {
            String str = "";
            if (jSONObject != null) {
                try {
                    if (jSONObject.getString("status").equals("ok")) {
                        JSONArray jSONArray = jSONObject.has("urls") ? jSONObject.getJSONArray("urls") : null;
                        if (jSONArray == null) {
                            jSONArray = new JSONArray();
                        }
                        if (jSONObject.has("url")) {
                            jSONArray.put(jSONObject.getString("url"));
                        }
                        if (jSONArray.length() > 0) {
                            q qVar = q.this;
                            Context context = this.f7818b;
                            b bVar = this.f7817a;
                            Objects.requireNonNull(bVar);
                            q$$ExternalSyntheticLambda0 q__externalsyntheticlambda0 = new q$$ExternalSyntheticLambda0(bVar);
                            try {
                                if (jSONArray.length() == 0) {
                                    h5.f6714a.post(q__externalsyntheticlambda0);
                                } else {
                                    String str2 = "";
                                    boolean z = false;
                                    for (int i = 0; i < jSONArray.length() && !z; i++) {
                                        str2 = jSONArray.getString(i);
                                        z = n5.b(context, str2, q__externalsyntheticlambda0);
                                    }
                                    str = str2;
                                }
                            } catch (Exception e2) {
                                Log.log(e2);
                                h5.f6714a.post(q__externalsyntheticlambda0);
                            }
                            qVar.f7816a = str;
                            return;
                        }
                    }
                } catch (JSONException e3) {
                    Log.log(e3);
                    this.f7817a.onHandleError();
                    return;
                }
            }
            this.f7817a.onHandleError();
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void onHandleError();

        void onHandled();

        void processClick(UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener);
    }

    public final void a(Context context, String str, String str2, long j, b bVar) {
        q$$ExternalSyntheticLambda0 q__externalsyntheticlambda0;
        if (TextUtils.isEmpty(str)) {
            bVar.onHandleError();
        } else if (!f7815b && str == null) {
            throw new AssertionError();
        } else {
            com.appodeal.ads.storage.o oVar = r.f7820a;
            if (str2 != null && !TextUtils.isEmpty(str2)) {
                if (j == 0) {
                    j = 180;
                }
                com.appodeal.ads.storage.o oVar2 = r.f7820a;
                oVar2.c(str2, System.currentTimeMillis() + (j * 60000));
                oVar2.f7664a.b(System.currentTimeMillis());
            }
            if (!str.equals("appodeal://")) {
                this.f7816a = str;
                bVar.processClick(null);
                q__externalsyntheticlambda0 = new q$$ExternalSyntheticLambda0(bVar);
            } else if (TextUtils.isEmpty(this.f7816a)) {
                bVar.processClick(new a(bVar, context));
                return;
            } else {
                str = this.f7816a;
                q__externalsyntheticlambda0 = new q$$ExternalSyntheticLambda0(bVar);
            }
            n5.b(context, str, q__externalsyntheticlambda0);
        }
    }
}

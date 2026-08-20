package com.yandex.metrica.impl.ob;

import android.net.Uri;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.yandex.metrica.networktasks.api.IParamsAppender;
/* loaded from: classes5.dex */
public class Ng implements IParamsAppender<C2022zb> {
    @Override // com.yandex.metrica.networktasks.api.IParamsAppender
    /* renamed from: a */
    public void appendParams(Uri.Builder builder, C2022zb c2022zb) {
        a(builder, "adv_id", "limit_ad_tracking", c2022zb.a().f15814a);
        a(builder, "oaid", "limit_oaid_tracking", c2022zb.b().f15814a);
        a(builder, "yandex_adv_id", "limit_yandex_adv_id_tracking", c2022zb.c().f15814a);
    }

    private void a(Uri.Builder builder, String str, String str2, C1878tb c1878tb) {
        String str3 = "";
        if (c1878tb == null) {
            builder.appendQueryParameter(str, "");
            builder.appendQueryParameter(str2, "");
            return;
        }
        String str4 = c1878tb.f15758b;
        if (str4 == null) {
            str4 = "";
        }
        builder.appendQueryParameter(str, str4);
        Boolean bool = c1878tb.f15759c;
        if (bool != null) {
            str3 = bool.booleanValue() ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0";
        }
        builder.appendQueryParameter(str2, str3);
    }
}

package com.explorestack.iab.vast.processor.url;

import android.os.Bundle;
import android.text.TextUtils;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastRequest;
/* loaded from: classes2.dex */
public class a implements UrlProcessor {
    @Override // com.explorestack.iab.vast.processor.url.UrlProcessor
    public String prepare(String str, Bundle bundle) {
        int i;
        if (!TextUtils.isEmpty(str) && bundle != null && bundle.containsKey(VastRequest.PARAMS_ERROR_CODE) && (i = bundle.getInt(VastRequest.PARAMS_ERROR_CODE, -1)) > -1) {
            VastLog.d("VastAdUrlProcessor", String.format("Before prepare url: %s", str));
            if (str.contains("[ERRORCODE]")) {
                str = str.replace("[ERRORCODE]", String.valueOf(i));
            }
            if (str.contains("%5BERRORCODE%5D")) {
                str = str.replace("%5BERRORCODE%5D", String.valueOf(i));
            }
            VastLog.d("VastAdUrlProcessor", String.format("After prepare url: %s", str));
        }
        return str;
    }
}

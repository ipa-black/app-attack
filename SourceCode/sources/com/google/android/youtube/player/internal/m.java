package com.google.android.youtube.player.internal;

import android.content.Context;
import android.content.res.Resources;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes4.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public final String f9743a;

    /* renamed from: b  reason: collision with root package name */
    public final String f9744b;

    /* renamed from: c  reason: collision with root package name */
    public final String f9745c;

    /* renamed from: d  reason: collision with root package name */
    public final String f9746d;

    /* renamed from: e  reason: collision with root package name */
    public final String f9747e;

    /* renamed from: f  reason: collision with root package name */
    public final String f9748f;

    /* renamed from: g  reason: collision with root package name */
    public final String f9749g;

    /* renamed from: h  reason: collision with root package name */
    public final String f9750h;
    public final String i;
    public final String j;

    public m(Context context) {
        Resources resources = context.getResources();
        Map<String, String> a2 = x.a((resources == null || resources.getConfiguration() == null || resources.getConfiguration().locale == null) ? Locale.getDefault() : resources.getConfiguration().locale);
        this.f9743a = a2.get("error_initializing_player");
        this.f9744b = a2.get("get_youtube_app_title");
        this.f9745c = a2.get("get_youtube_app_text");
        this.f9746d = a2.get("get_youtube_app_action");
        this.f9747e = a2.get("enable_youtube_app_title");
        this.f9748f = a2.get("enable_youtube_app_text");
        this.f9749g = a2.get("enable_youtube_app_action");
        this.f9750h = a2.get("update_youtube_app_title");
        this.i = a2.get("update_youtube_app_text");
        this.j = a2.get("update_youtube_app_action");
    }
}

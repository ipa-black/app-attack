package com.appodeal.ads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.appodeal.ads.utils.Log;
/* loaded from: classes.dex */
public final class b2 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g2 f6558a;

    public b2(g2 g2Var) {
        this.f6558a = g2Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Uri uri = this.f6558a.f6677a.q;
        if (uri == null) {
            Log.log(g2.x, "Video", "click url is absent");
            return;
        }
        Log.log(g2.x, "Video", "clicked");
        g2 g2Var = this.f6558a;
        g2.y = g2Var;
        g2Var.s = true;
        int currentPosition = (g2Var.c() && this.f6558a.f6683g.isPlaying()) ? this.f6558a.f6683g.getCurrentPosition() : 0;
        this.f6558a.d();
        Context context = this.f6558a.getContext();
        String path = uri.getPath();
        int i = VideoPlayerActivity.f6410d;
        Intent intent = new Intent(context, VideoPlayerActivity.class);
        intent.putExtra("com.appodeal.ads.fileUri", path);
        intent.putExtra("com.appodeal.ads.seekTo", currentPosition);
        this.f6558a.getContext().startActivity(intent);
    }
}

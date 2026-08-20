package io.bidmachine;

import android.app.Activity;
import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class SimpleContextProvider implements ContextProvider {
    private final Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleContextProvider(Context context) {
        this.context = context;
    }

    @Override // io.bidmachine.ContextProvider
    public Context getApplicationContext() {
        return getContext().getApplicationContext();
    }

    @Override // io.bidmachine.ContextProvider
    public Context getContext() {
        return this.context;
    }

    @Override // io.bidmachine.ContextProvider
    public Activity getActivity() {
        Context context = getContext();
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return BidMachineActivityManager.getTopActivity();
    }
}

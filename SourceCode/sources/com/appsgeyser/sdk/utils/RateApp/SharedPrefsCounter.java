package com.appsgeyser.sdk.utils.RateApp;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes2.dex */
class SharedPrefsCounter {
    private final OnEntriesListener listener;
    private final SharedPreferences sharedPreferences;
    private final String ENTRIES_SHARED_NAME = "ENTRIES_SHARED_NAME";
    private final String ENTRIES_KEY = "ENTRIES_KEY";
    private final String IS_SHOWN_KEY = "IS_SHOWN_KEY";
    private final int MAX_ENTRIES = 3;

    /* loaded from: classes2.dex */
    interface OnEntriesListener {
        void onComplete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SharedPrefsCounter(Context context, OnEntriesListener onEntriesListener) {
        this.sharedPreferences = context.getSharedPreferences("ENTRIES_SHARED_NAME", 0);
        this.listener = onEntriesListener;
    }

    public void increaseEntries() {
        this.sharedPreferences.edit().putInt("ENTRIES_KEY", this.sharedPreferences.getInt("ENTRIES_KEY", 0) + 1).apply();
    }

    private boolean isShown() {
        return this.sharedPreferences.getBoolean("IS_SHOWN_KEY", false);
    }

    public void setShownFlag(boolean z) {
        this.sharedPreferences.edit().putBoolean("IS_SHOWN_KEY", z).apply();
    }

    public void checkNeedToShow() {
        if (this.sharedPreferences.getInt("ENTRIES_KEY", 0) < 3 || isShown()) {
            return;
        }
        this.listener.onComplete();
    }
}

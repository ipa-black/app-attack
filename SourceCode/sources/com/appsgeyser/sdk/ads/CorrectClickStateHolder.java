package com.appsgeyser.sdk.ads;
/* loaded from: classes2.dex */
public class CorrectClickStateHolder {
    private static CorrectClickStateHolder instance;
    private int state = 0;

    public static CorrectClickStateHolder getInstance() {
        CorrectClickStateHolder correctClickStateHolder = instance;
        if (correctClickStateHolder == null) {
            synchronized (CorrectClickStateHolder.class) {
                correctClickStateHolder = instance;
                if (correctClickStateHolder == null) {
                    correctClickStateHolder = new CorrectClickStateHolder();
                    instance = correctClickStateHolder;
                }
            }
        }
        return correctClickStateHolder;
    }

    private CorrectClickStateHolder() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        this.state = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void allowClick() {
        this.state++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isClickAllowed() {
        return this.state > 0;
    }
}

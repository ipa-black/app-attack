package com.appsgeyser.sdk.server.network;
/* loaded from: classes2.dex */
public abstract class OnNetworkStateChangedListener {
    private String id;

    public abstract void networkIsDown();

    public abstract void networkIsUp();

    /* JADX INFO: Access modifiers changed from: protected */
    public OnNetworkStateChangedListener(String str) {
        this.id = str;
    }

    public String getId() {
        return this.id;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.id.equals(((OnNetworkStateChangedListener) obj).id);
    }

    public int hashCode() {
        return this.id.hashCode();
    }
}

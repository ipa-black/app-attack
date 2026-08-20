package org.apache.mina.examples.tennis;
/* loaded from: classes4.dex */
public class TennisBall {
    private final boolean ping;
    private final int ttl;

    public TennisBall(int i) {
        this(i, true);
    }

    private TennisBall(int i, boolean z) {
        this.ttl = i;
        this.ping = z;
    }

    public int getTTL() {
        return this.ttl;
    }

    public TennisBall stroke() {
        return new TennisBall(this.ttl - 1, !this.ping);
    }

    public String toString() {
        if (this.ping) {
            return new StringBuffer("PING (").append(this.ttl).append(")").toString();
        }
        return new StringBuffer("PONG (").append(this.ttl).append(")").toString();
    }
}

package org.apache.commons.lang.time;
/* loaded from: classes5.dex */
public class StopWatch {
    private long startTime = -1;
    private long stopTime = -1;

    public void start() {
        this.stopTime = -1L;
        this.startTime = System.currentTimeMillis();
    }

    public void stop() {
        this.stopTime = System.currentTimeMillis();
    }

    public void reset() {
        this.startTime = -1L;
        this.stopTime = -1L;
    }

    public void split() {
        this.stopTime = System.currentTimeMillis();
    }

    public void unsplit() {
        this.stopTime = -1L;
    }

    public void suspend() {
        this.stopTime = System.currentTimeMillis();
    }

    public void resume() {
        this.startTime += System.currentTimeMillis() - this.stopTime;
        this.stopTime = -1L;
    }

    public long getTime() {
        long j;
        long j2 = this.stopTime;
        if (j2 == -1) {
            if (this.startTime == -1) {
                return 0L;
            }
            j2 = System.currentTimeMillis();
            j = this.startTime;
        } else {
            j = this.startTime;
        }
        return j2 - j;
    }

    public String toString() {
        return DurationFormatUtils.formatISO(getTime());
    }
}

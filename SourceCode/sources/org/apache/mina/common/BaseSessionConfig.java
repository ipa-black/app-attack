package org.apache.mina.common;
/* loaded from: classes4.dex */
public abstract class BaseSessionConfig implements SessionConfig {
    private int idleTimeForBoth;
    private int idleTimeForRead;
    private int idleTimeForWrite;
    private int writeTimeout;

    @Override // org.apache.mina.common.SessionConfig
    public int getIdleTime(IdleStatus idleStatus) {
        if (idleStatus == IdleStatus.BOTH_IDLE) {
            return this.idleTimeForBoth;
        }
        if (idleStatus == IdleStatus.READER_IDLE) {
            return this.idleTimeForRead;
        }
        if (idleStatus == IdleStatus.WRITER_IDLE) {
            return this.idleTimeForWrite;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown idle status: ").append(idleStatus).toString());
    }

    @Override // org.apache.mina.common.SessionConfig
    public long getIdleTimeInMillis(IdleStatus idleStatus) {
        return getIdleTime(idleStatus) * 1000;
    }

    @Override // org.apache.mina.common.SessionConfig
    public void setIdleTime(IdleStatus idleStatus, int i) {
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("Illegal idle time: ").append(i).toString());
        }
        if (idleStatus == IdleStatus.BOTH_IDLE) {
            this.idleTimeForBoth = i;
        } else if (idleStatus == IdleStatus.READER_IDLE) {
            this.idleTimeForRead = i;
        } else if (idleStatus == IdleStatus.WRITER_IDLE) {
            this.idleTimeForWrite = i;
        } else {
            throw new IllegalArgumentException(new StringBuffer("Unknown idle status: ").append(idleStatus).toString());
        }
    }

    @Override // org.apache.mina.common.SessionConfig
    public int getWriteTimeout() {
        return this.writeTimeout;
    }

    @Override // org.apache.mina.common.SessionConfig
    public long getWriteTimeoutInMillis() {
        return this.writeTimeout * 1000;
    }

    @Override // org.apache.mina.common.SessionConfig
    public void setWriteTimeout(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("Illegal write timeout: ").append(i).toString());
        }
        this.writeTimeout = i;
    }
}

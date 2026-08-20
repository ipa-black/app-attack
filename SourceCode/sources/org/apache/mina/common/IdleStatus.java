package org.apache.mina.common;
/* loaded from: classes4.dex */
public class IdleStatus {
    private final String strValue;
    public static final IdleStatus READER_IDLE = new IdleStatus("reader idle");
    public static final IdleStatus WRITER_IDLE = new IdleStatus("writer idle");
    public static final IdleStatus BOTH_IDLE = new IdleStatus("both idle");

    private IdleStatus(String str) {
        this.strValue = str;
    }

    public String toString() {
        return this.strValue;
    }
}

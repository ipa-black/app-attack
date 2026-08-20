package jdbm.recman;
/* loaded from: classes5.dex */
final class Location {
    private long block;
    private short offset;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location(long j, short s) {
        this.block = j;
        this.offset = s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location(long j) {
        this.offset = (short) (65535 & j);
        this.block = j >> 16;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location(PhysicalRowId physicalRowId) {
        this.block = physicalRowId.getBlock();
        this.offset = physicalRowId.getOffset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getBlock() {
        return this.block;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short getOffset() {
        return this.offset;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long toLong() {
        return (this.block << 16) + this.offset;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Location)) {
            return false;
        }
        Location location = (Location) obj;
        return location.block == this.block && location.offset == this.offset;
    }

    public String toString() {
        return new StringBuffer("PL(").append(this.block).append(":").append((int) this.offset).append(")").toString();
    }
}

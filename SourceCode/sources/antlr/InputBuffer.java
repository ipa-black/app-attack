package antlr;
/* loaded from: classes.dex */
public abstract class InputBuffer {
    protected int nMarkers = 0;
    protected int markerOffset = 0;
    protected int numToConsume = 0;
    protected CharQueue queue = new CharQueue(1);

    public abstract void fill(int i) throws CharStreamException;

    public void commit() {
        this.nMarkers--;
    }

    public void consume() {
        this.numToConsume++;
    }

    public String getLAChars() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = this.markerOffset; i < this.queue.nbrEntries; i++) {
            stringBuffer.append(this.queue.elementAt(i));
        }
        return stringBuffer.toString();
    }

    public String getMarkedChars() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.markerOffset; i++) {
            stringBuffer.append(this.queue.elementAt(i));
        }
        return stringBuffer.toString();
    }

    public boolean isMarked() {
        return this.nMarkers != 0;
    }

    public char LA(int i) throws CharStreamException {
        fill(i);
        return this.queue.elementAt((this.markerOffset + i) - 1);
    }

    public int mark() {
        syncConsume();
        this.nMarkers++;
        return this.markerOffset;
    }

    public void rewind(int i) {
        syncConsume();
        this.markerOffset = i;
        this.nMarkers--;
    }

    public void reset() {
        this.nMarkers = 0;
        this.markerOffset = 0;
        this.numToConsume = 0;
        this.queue.reset();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void syncConsume() {
        while (this.numToConsume > 0) {
            if (this.nMarkers > 0) {
                this.markerOffset++;
            } else {
                this.queue.removeFirst();
            }
            this.numToConsume--;
        }
    }
}

package antlr;
/* loaded from: classes.dex */
public class TokenBuffer {
    protected TokenStream input;
    int nMarkers = 0;
    int markerOffset = 0;
    int numToConsume = 0;
    TokenQueue queue = new TokenQueue(1);

    public TokenBuffer(TokenStream tokenStream) {
        this.input = tokenStream;
    }

    public final void reset() {
        this.nMarkers = 0;
        this.markerOffset = 0;
        this.numToConsume = 0;
        this.queue.reset();
    }

    public final void consume() {
        this.numToConsume++;
    }

    private final void fill(int i) throws TokenStreamException {
        syncConsume();
        while (this.queue.nbrEntries < this.markerOffset + i) {
            this.queue.append(this.input.nextToken());
        }
    }

    public TokenStream getInput() {
        return this.input;
    }

    public final int LA(int i) throws TokenStreamException {
        fill(i);
        return this.queue.elementAt((this.markerOffset + i) - 1).type;
    }

    public final Token LT(int i) throws TokenStreamException {
        fill(i);
        return this.queue.elementAt((this.markerOffset + i) - 1);
    }

    public final int mark() {
        syncConsume();
        this.nMarkers++;
        return this.markerOffset;
    }

    public final void rewind(int i) {
        syncConsume();
        this.markerOffset = i;
        this.nMarkers--;
    }

    private final void syncConsume() {
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

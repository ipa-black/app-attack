package antlr;

import antlr.collections.impl.BitSet;
import antlr.collections.impl.Vector;
/* loaded from: classes.dex */
public class Lookahead implements Cloneable {
    String cycle;
    BitSet epsilonDepth;
    BitSet fset;
    boolean hasEpsilon;

    public Lookahead() {
        this.hasEpsilon = false;
        this.fset = new BitSet();
    }

    public Lookahead(BitSet bitSet) {
        this.hasEpsilon = false;
        this.fset = bitSet;
    }

    public Lookahead(String str) {
        this();
        this.cycle = str;
    }

    public Object clone() {
        try {
            Lookahead lookahead = (Lookahead) super.clone();
            lookahead.fset = (BitSet) this.fset.clone();
            lookahead.cycle = this.cycle;
            BitSet bitSet = this.epsilonDepth;
            if (bitSet != null) {
                lookahead.epsilonDepth = (BitSet) bitSet.clone();
            }
            return lookahead;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public void combineWith(Lookahead lookahead) {
        if (this.cycle == null) {
            this.cycle = lookahead.cycle;
        }
        if (lookahead.containsEpsilon()) {
            this.hasEpsilon = true;
        }
        BitSet bitSet = this.epsilonDepth;
        if (bitSet != null) {
            BitSet bitSet2 = lookahead.epsilonDepth;
            if (bitSet2 != null) {
                bitSet.orInPlace(bitSet2);
            }
        } else {
            BitSet bitSet3 = lookahead.epsilonDepth;
            if (bitSet3 != null) {
                this.epsilonDepth = (BitSet) bitSet3.clone();
            }
        }
        this.fset.orInPlace(lookahead.fset);
    }

    public boolean containsEpsilon() {
        return this.hasEpsilon;
    }

    public Lookahead intersection(Lookahead lookahead) {
        Lookahead lookahead2 = new Lookahead(this.fset.and(lookahead.fset));
        if (this.hasEpsilon && lookahead.hasEpsilon) {
            lookahead2.setEpsilon();
        }
        return lookahead2;
    }

    public boolean nil() {
        return this.fset.nil() && !this.hasEpsilon;
    }

    public static Lookahead of(int i) {
        Lookahead lookahead = new Lookahead();
        lookahead.fset.add(i);
        return lookahead;
    }

    public void resetEpsilon() {
        this.hasEpsilon = false;
    }

    public void setEpsilon() {
        this.hasEpsilon = true;
    }

    public String toString() {
        String bitSet = this.fset.toString(",");
        String str = containsEpsilon() ? "+<epsilon>" : "";
        return new StringBuffer().append(bitSet).append(str).append(this.cycle != null ? new StringBuffer("; FOLLOW(").append(this.cycle).append(")").toString() : "").append(this.epsilonDepth != null ? new StringBuffer("; depths=").append(this.epsilonDepth.toString(",")).toString() : "").toString();
    }

    public String toString(String str, CharFormatter charFormatter) {
        String bitSet = this.fset.toString(str, charFormatter);
        String str2 = containsEpsilon() ? "+<epsilon>" : "";
        return new StringBuffer().append(bitSet).append(str2).append(this.cycle != null ? new StringBuffer("; FOLLOW(").append(this.cycle).append(")").toString() : "").append(this.epsilonDepth != null ? new StringBuffer("; depths=").append(this.epsilonDepth.toString(",")).toString() : "").toString();
    }

    public String toString(String str, CharFormatter charFormatter, Grammar grammar) {
        if (grammar instanceof LexerGrammar) {
            return toString(str, charFormatter);
        }
        return toString(str, grammar.tokenManager.getVocabulary());
    }

    public String toString(String str, Vector vector) {
        String bitSet = this.fset.toString(str, vector);
        return new StringBuffer().append(bitSet).append(this.cycle != null ? new StringBuffer("; FOLLOW(").append(this.cycle).append(")").toString() : "").append(this.epsilonDepth != null ? new StringBuffer("; depths=").append(this.epsilonDepth.toString(",")).toString() : "").toString();
    }
}

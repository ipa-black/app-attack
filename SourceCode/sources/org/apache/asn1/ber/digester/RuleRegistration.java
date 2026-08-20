package org.apache.asn1.ber.digester;
/* loaded from: classes5.dex */
public class RuleRegistration {
    private final int[] pattern;
    private final Rule rule;

    public RuleRegistration(int[] iArr, Rule rule) {
        this.rule = rule;
        this.pattern = iArr;
    }

    public int[] getPattern() {
        return this.pattern;
    }

    public Rule getRule() {
        return this.rule;
    }
}

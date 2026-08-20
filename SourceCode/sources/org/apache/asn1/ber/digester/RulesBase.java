package org.apache.asn1.ber.digester;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.collections.primitives.IntStack;
/* loaded from: classes5.dex */
public class RulesBase implements Rules {
    private BERDigester digester;
    private TagTree tagTree = new TagTree();
    private ArrayList rules = new ArrayList();

    @Override // org.apache.asn1.ber.digester.Rules
    public void setDigester(BERDigester bERDigester) {
        this.digester = bERDigester;
    }

    @Override // org.apache.asn1.ber.digester.Rules
    public BERDigester getDigester() {
        return this.digester;
    }

    @Override // org.apache.asn1.ber.digester.Rules
    public void add(int[] iArr, Rule rule) {
        this.tagTree.addRule(iArr, rule);
        this.rules.add(rule);
    }

    @Override // org.apache.asn1.ber.digester.Rules
    public void clear() {
        this.tagTree = new TagTree();
        this.rules.clear();
    }

    @Override // org.apache.asn1.ber.digester.Rules
    public List match(int[] iArr) {
        return this.tagTree.match(new IntStack(iArr));
    }

    @Override // org.apache.asn1.ber.digester.Rules
    public List match(IntStack intStack) {
        return this.tagTree.match(intStack);
    }

    @Override // org.apache.asn1.ber.digester.Rules
    public List rules() {
        return Collections.unmodifiableList(this.rules);
    }
}

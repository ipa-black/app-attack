package org.apache.asn1.ber.digester;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class TagNode {
    private int depth;
    private Integer tag;
    private HashMap children = new HashMap(3);
    private ArrayList rules = new ArrayList(3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public TagNode(Integer num) {
        this.tag = num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addNode(TagNode tagNode) {
        this.children.put(tagNode.getTag(), tagNode);
        tagNode.setDepth(this.depth + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addRule(Rule rule) {
        this.rules.add(rule);
    }

    void setDepth(int i) {
        this.depth = i;
    }

    public Integer getTag() {
        return this.tag;
    }

    public int getDepth() {
        return this.depth;
    }

    public List getRules() {
        return this.rules;
    }

    public boolean hasChild(Integer num) {
        return this.children.containsKey(num);
    }

    public boolean isLeaf() {
        return this.children.isEmpty();
    }

    public Iterator getChildren() {
        return this.children.values().iterator();
    }

    public TagNode getChild(Integer num) {
        return (TagNode) this.children.get(num);
    }
}

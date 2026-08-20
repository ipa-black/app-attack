package org.apache.asn1.ber.digester;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import org.apache.commons.collections.primitives.IntStack;
import org.apache.commons.lang.Validate;
/* loaded from: classes5.dex */
public class TagTree {
    public static final int WILDCARD = 536870911;
    private HashMap normNodes = new HashMap(3);
    private HashMap wildNodes = new HashMap(3);
    private ArrayList normRegistrations = new ArrayList();
    private ArrayList wildRegistrations = new ArrayList();

    public void addRule(int[] iArr, Rule rule) {
        if (iArr[0] == 536870911) {
            this.wildRegistrations.add(new RuleRegistration(iArr, rule));
            addWildRule(iArr, rule);
            return;
        }
        this.normRegistrations.add(new RuleRegistration(iArr, rule));
        addNormalRule(iArr, rule);
    }

    private void addNormalRule(int[] iArr, Rule rule) {
        TagNode tagNode;
        Stack stack = new Stack();
        Validate.notNull(rule, "cannot add null rule");
        Validate.notNull(iArr, "cannot add rule with null pattern");
        Validate.isTrue(iArr.length > 0, "cannot add rule with empty pattern");
        Integer num = new Integer(iArr[0]);
        if (this.normNodes.containsKey(num)) {
            tagNode = (TagNode) this.normNodes.get(num);
            stack.push(tagNode.getTag());
        } else {
            TagNode tagNode2 = new TagNode(num);
            this.normNodes.put(num, tagNode2);
            stack.push(tagNode2.getTag());
            addWildRulesToNewNormalNode(tagNode2, stack);
            tagNode = tagNode2;
        }
        for (int i = 1; i < iArr.length; i++) {
            Integer num2 = new Integer(iArr[i]);
            TagNode child = tagNode.getChild(num2);
            if (child == null) {
                child = new TagNode(num2);
                tagNode.addNode(child);
                stack.push(child.getTag());
                addWildRulesToNewNormalNode(child, stack);
            } else {
                stack.push(child.getTag());
            }
            tagNode = child;
        }
        tagNode.addRule(rule);
    }

    private void addWildRule(int[] iArr, Rule rule) {
        TagNode tagNode;
        Validate.notNull(iArr, new StringBuffer("Attempting to register rule ").append(rule).append(" with null pattern").toString());
        Validate.isTrue(iArr.length > 0, new StringBuffer("Attempting to register rule ").append(rule).append(" with zero length pattern").toString());
        Validate.isTrue(iArr[0] == 536870911, new StringBuffer("Expected rule ").append(rule).append(" pattern to have front wild card but it did not").toString());
        Validate.isTrue(iArr.length > 1, new StringBuffer("Cannot register only wild card \"*\" pattern for rule ").append(rule).toString());
        for (TagNode tagNode2 : this.normNodes.values()) {
            addWildRuleToNormalTree(iArr, rule, new Stack(), tagNode2);
        }
        Integer num = new Integer(iArr[iArr.length - 1]);
        if (this.wildNodes.containsKey(num)) {
            tagNode = (TagNode) this.wildNodes.get(num);
        } else {
            TagNode tagNode3 = new TagNode(num);
            this.wildNodes.put(num, tagNode3);
            tagNode = tagNode3;
        }
        for (int length = iArr.length - 2; length >= 1; length--) {
            Integer num2 = new Integer(iArr[length]);
            TagNode child = tagNode.getChild(num2);
            if (child == null) {
                child = new TagNode(num2);
                tagNode.addNode(child);
            }
            tagNode = child;
        }
        for (TagNode tagNode4 : this.wildNodes.values()) {
            addWildRuleToWildTree(iArr, rule, new Stack(), tagNode4);
        }
    }

    private void addWildRulesToNewNormalNode(TagNode tagNode, Stack stack) {
        for (int i = 0; i < this.wildRegistrations.size(); i++) {
            RuleRegistration ruleRegistration = (RuleRegistration) this.wildRegistrations.get(i);
            if (isTailMatch(ruleRegistration.getPattern(), stack)) {
                tagNode.addRule(ruleRegistration.getRule());
            }
        }
    }

    private void addWildRuleToWildTree(int[] iArr, Rule rule, Stack stack, TagNode tagNode) {
        stack.push(tagNode.getTag());
        if (isReverseTailMatch(iArr, stack) && !tagNode.getRules().contains(rule)) {
            tagNode.addRule(rule);
        }
        if (!tagNode.isLeaf()) {
            Iterator children = tagNode.getChildren();
            while (children.hasNext()) {
                addWildRuleToWildTree(iArr, rule, stack, (TagNode) children.next());
            }
        }
        stack.pop();
    }

    private boolean isReverseTailMatch(int[] iArr, Stack stack) {
        if (stack.size() < iArr.length - 1) {
            return false;
        }
        int length = iArr.length - 1;
        int i = 0;
        while (length >= 1) {
            if (iArr[length] != ((Integer) stack.get(i)).intValue()) {
                return false;
            }
            length--;
            i++;
        }
        return true;
    }

    private void addWildRuleToNormalTree(int[] iArr, Rule rule, Stack stack, TagNode tagNode) {
        stack.push(tagNode.getTag());
        if (isTailMatch(iArr, stack) && tagNode.isLeaf() && !tagNode.getRules().contains(rule)) {
            tagNode.addRule(rule);
        }
        if (!tagNode.isLeaf()) {
            Iterator children = tagNode.getChildren();
            while (children.hasNext()) {
                addWildRuleToNormalTree(iArr, rule, stack, (TagNode) children.next());
            }
        }
        stack.pop();
    }

    private boolean isTailMatch(int[] iArr, Stack stack) {
        if (stack.size() < iArr.length - 1) {
            return false;
        }
        int length = iArr.length - 1;
        int size = stack.size() - 1;
        while (length >= 1) {
            if (iArr[length] != ((Integer) stack.get(size)).intValue()) {
                return false;
            }
            length--;
            size--;
        }
        return true;
    }

    public List match(IntStack intStack) {
        TagNode node = getNode(intStack);
        if (node == null) {
            return Collections.EMPTY_LIST;
        }
        return node.getRules();
    }

    public TagNode getNode(IntStack intStack) {
        TagNode normalNode = getNormalNode(intStack);
        return normalNode == null ? getWildNode(intStack) : normalNode;
    }

    public List match(int[] iArr) {
        TagNode node = getNode(iArr);
        if (node == null) {
            return Collections.EMPTY_LIST;
        }
        return node.getRules();
    }

    public TagNode getNode(int[] iArr) {
        TagNode normalNode = getNormalNode(iArr);
        return normalNode == null ? getWildNode(iArr) : normalNode;
    }

    private TagNode getNormalNode(IntStack intStack) {
        Validate.notNull(intStack, "cannot match using null pattern");
        Validate.isTrue(!intStack.empty(), "cannot match with empty pattern");
        Integer num = new Integer(intStack.get(0));
        if (this.normNodes.containsKey(num)) {
            TagNode tagNode = (TagNode) this.normNodes.get(num);
            for (int i = 1; i < intStack.size(); i++) {
                tagNode = tagNode.getChild(new Integer(intStack.get(i)));
                if (tagNode == null) {
                    return null;
                }
            }
            return tagNode;
        }
        return null;
    }

    private TagNode getNormalNode(int[] iArr) {
        Validate.notNull(iArr, "cannot match using null pattern");
        Validate.isTrue(iArr.length > 0, "cannot match with empty pattern");
        Integer num = new Integer(iArr[0]);
        if (this.normNodes.containsKey(num)) {
            TagNode tagNode = (TagNode) this.normNodes.get(num);
            for (int i = 1; i < iArr.length; i++) {
                tagNode = tagNode.getChild(new Integer(iArr[i]));
                if (tagNode == null) {
                    return null;
                }
            }
            return tagNode;
        }
        return null;
    }

    private TagNode getWildNode(int[] iArr) {
        Validate.notNull(iArr, "cannot match using null pattern");
        Validate.isTrue(iArr.length > 0, "cannot match with empty pattern");
        Integer num = new Integer(iArr[iArr.length - 1]);
        if (this.wildNodes.containsKey(num)) {
            TagNode tagNode = (TagNode) this.wildNodes.get(num);
            int length = iArr.length - 2;
            while (length >= 0) {
                TagNode child = tagNode.getChild(new Integer(iArr[length]));
                if (child == null) {
                    return tagNode;
                }
                length--;
                tagNode = child;
            }
            return tagNode;
        }
        return null;
    }

    private TagNode getWildNode(IntStack intStack) {
        Validate.notNull(intStack, "cannot match using null pattern");
        Validate.isTrue(!intStack.empty(), "cannot match with empty pattern");
        Integer num = new Integer(intStack.get(intStack.size() - 1));
        if (this.wildNodes.containsKey(num)) {
            TagNode tagNode = (TagNode) this.wildNodes.get(num);
            int size = intStack.size() - 2;
            while (size >= 0) {
                TagNode child = tagNode.getChild(new Integer(intStack.get(size)));
                if (child == null) {
                    return tagNode;
                }
                size--;
                tagNode = child;
            }
            return tagNode;
        }
        return null;
    }
}

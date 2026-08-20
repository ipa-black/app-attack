package antlr;
/* loaded from: classes.dex */
public class ActionTransInfo {
    public boolean assignToRoot = false;
    public String refRuleRoot = null;
    public String followSetName = null;

    public String toString() {
        return new StringBuffer("assignToRoot:").append(this.assignToRoot).append(", refRuleRoot:").append(this.refRuleRoot).append(", FOLLOW Set:").append(this.followSetName).toString();
    }
}

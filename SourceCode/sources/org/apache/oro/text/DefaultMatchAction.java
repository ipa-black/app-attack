package org.apache.oro.text;
/* loaded from: classes3.dex */
final class DefaultMatchAction implements MatchAction {
    @Override // org.apache.oro.text.MatchAction
    public void processMatch(MatchActionInfo matchActionInfo) {
        matchActionInfo.output.println(matchActionInfo.line);
    }
}

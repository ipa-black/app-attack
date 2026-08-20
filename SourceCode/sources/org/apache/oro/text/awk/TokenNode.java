package org.apache.oro.text.awk;
/* loaded from: classes3.dex */
class TokenNode extends LeafNode {
    char _token;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TokenNode(char c2, int i) {
        super(i);
        this._token = c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.apache.oro.text.awk.SyntaxNode
    public SyntaxNode _clone(int[] iArr) {
        char c2 = this._token;
        int i = iArr[0];
        iArr[0] = i + 1;
        return new TokenNode(c2, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.apache.oro.text.awk.LeafNode
    public boolean _matches(char c2) {
        return this._token == c2;
    }
}

.class public Lantlr/NoViableAltException;
.super Lantlr/RecognitionException;
.source "NoViableAltException.java"


# instance fields
.field public node:Lantlr/collections/AST;

.field public token:Lantlr/Token;


# direct methods
.method public constructor <init>(Lantlr/Token;Ljava/lang/String;)V
    .locals 3

    .line 22
    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result v1

    const-string v2, "NoViableAlt"

    invoke-direct {p0, v2, p2, v0, v1}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 23
    iput-object p1, p0, Lantlr/NoViableAltException;->token:Lantlr/Token;

    return-void
.end method

.method public constructor <init>(Lantlr/collections/AST;)V
    .locals 3

    .line 17
    const-string v0, "<AST>"

    const/4 v1, -0x1

    const-string v2, "NoViableAlt"

    invoke-direct {p0, v2, v0, v1, v1}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 18
    iput-object p1, p0, Lantlr/NoViableAltException;->node:Lantlr/collections/AST;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lantlr/NoViableAltException;->token:Lantlr/Token;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "unexpected token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/NoViableAltException;->token:Lantlr/Token;

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lantlr/NoViableAltException;->node:Lantlr/collections/AST;

    sget-object v1, Lantlr/TreeParser;->ASTNULL:Lantlr/ASTNULLType;

    if-ne v0, v1, :cond_1

    .line 36
    const-string v0, "unexpected end of subtree"

    return-object v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "unexpected AST node: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/NoViableAltException;->node:Lantlr/collections/AST;

    invoke-interface {v1}, Lantlr/collections/AST;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

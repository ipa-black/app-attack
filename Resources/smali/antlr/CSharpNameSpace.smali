.class public Lantlr/CSharpNameSpace;
.super Lantlr/NameSpace;
.source "CSharpNameSpace.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lantlr/NameSpace;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method emitClosures(Ljava/io/PrintWriter;)V
    .locals 1

    .line 54
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method emitDeclarations(Ljava/io/PrintWriter;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "namespace "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/NameSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

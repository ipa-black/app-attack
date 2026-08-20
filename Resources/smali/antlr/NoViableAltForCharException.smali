.class public Lantlr/NoViableAltForCharException;
.super Lantlr/RecognitionException;
.source "NoViableAltForCharException.java"


# instance fields
.field public foundChar:C


# direct methods
.method public constructor <init>(CLantlr/CharScanner;)V
    .locals 3

    .line 14
    invoke-virtual {p2}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/CharScanner;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/CharScanner;->getColumn()I

    move-result p2

    const-string v2, "NoViableAlt"

    invoke-direct {p0, v2, v0, v1, p2}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 16
    iput-char p1, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 21
    invoke-direct {p0, p1, p2, p3, v0}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;II)V
    .locals 1

    .line 25
    const-string v0, "NoViableAlt"

    invoke-direct {p0, v0, p2, p3, p4}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 26
    iput-char p1, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 39
    iget-char v0, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7e

    if-gt v0, v1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "unexpected char: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 47
    :cond_0
    iget-char v0, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    shr-int/lit8 v0, v0, 0x4

    .line 49
    const-string v1, "unexpected char: 0x"

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 50
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    or-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x37

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    iget-char v1, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    and-int/lit8 v1, v1, 0xf

    if-ge v1, v2, :cond_2

    .line 57
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    or-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 59
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, v1, 0x37

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

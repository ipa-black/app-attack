.class public final Lorg/apache/regexp/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Lorg/apache/regexp/CharacterIterator;


# instance fields
.field private final src:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/regexp/StringCharacterIterator;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/regexp/StringCharacterIterator;->src:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public isEnd(I)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/regexp/StringCharacterIterator;->src:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/regexp/StringCharacterIterator;->src:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/regexp/StringCharacterIterator;->src:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public final Lorg/apache/regexp/CharacterArrayCharacterIterator;
.super Ljava/lang/Object;
.source "CharacterArrayCharacterIterator.java"

# interfaces
.implements Lorg/apache/regexp/CharacterIterator;


# instance fields
.field private final len:I

.field private final off:I

.field private final src:[C


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->src:[C

    .line 77
    iput p2, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->off:I

    .line 78
    iput p3, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->len:I

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->src:[C

    iget v1, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->off:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1
.end method

.method public isEnd(I)Z
    .locals 1

    .line 102
    iget v0, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->len:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->src:[C

    iget v2, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->off:I

    add-int/2addr v2, p1

    iget p1, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->len:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->src:[C

    iget v2, p0, Lorg/apache/regexp/CharacterArrayCharacterIterator;->off:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

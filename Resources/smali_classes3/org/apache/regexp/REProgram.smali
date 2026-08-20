.class public Lorg/apache/regexp/REProgram;
.super Ljava/lang/Object;
.source "REProgram.java"


# static fields
.field static final OPT_HASBACKREFS:I = 0x1


# instance fields
.field flags:I

.field instruction:[C

.field lenInstruction:I

.field prefix:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1

    .line 90
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/regexp/REProgram;-><init>([CI)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p0, p1, p2}, Lorg/apache/regexp/REProgram;->setInstructions([CI)V

    return-void
.end method


# virtual methods
.method public getInstructions()[C
    .locals 4

    .line 112
    iget v0, p0, Lorg/apache/regexp/REProgram;->lenInstruction:I

    if-eqz v0, :cond_0

    .line 115
    new-array v1, v0, [C

    .line 116
    iget-object v2, p0, Lorg/apache/regexp/REProgram;->instruction:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInstructions([CI)V
    .locals 7

    .line 135
    iput-object p1, p0, Lorg/apache/regexp/REProgram;->instruction:[C

    .line 136
    iput p2, p0, Lorg/apache/regexp/REProgram;->lenInstruction:I

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lorg/apache/regexp/REProgram;->flags:I

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lorg/apache/regexp/REProgram;->prefix:[C

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    const/16 v1, 0x41

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-lt p2, v3, :cond_0

    .line 146
    aget-char v4, p1, v0

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_0

    .line 149
    aget-char v4, p1, v2

    .line 150
    aget-char v4, p1, v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_0

    const/4 v4, 0x6

    if-lt p2, v4, :cond_0

    .line 153
    aget-char v5, p1, v3

    if-ne v5, v1, :cond_0

    const/4 v5, 0x4

    .line 156
    aget-char v5, p1, v5

    .line 157
    new-array v6, v5, [C

    iput-object v6, p0, Lorg/apache/regexp/REProgram;->prefix:[C

    .line 158
    invoke-static {p1, v4, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    if-lt v0, p2, :cond_1

    goto :goto_3

    .line 168
    :cond_1
    aget-char v4, p1, v0

    const/16 v5, 0x23

    if-eq v4, v5, :cond_4

    if-eq v4, v1, :cond_3

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 171
    aget-char v4, p1, v4

    mul-int/2addr v4, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v0, 0x1

    .line 175
    aget-char v4, p1, v4

    :goto_1
    add-int/2addr v0, v4

    :goto_2
    add-int/2addr v0, v3

    goto :goto_0

    .line 179
    :cond_4
    iget p1, p0, Lorg/apache/regexp/REProgram;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/regexp/REProgram;->flags:I

    :cond_5
    :goto_3
    return-void
.end method

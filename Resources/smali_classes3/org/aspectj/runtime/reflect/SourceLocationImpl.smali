.class Lorg/aspectj/runtime/reflect/SourceLocationImpl;
.super Ljava/lang/Object;
.source "SourceLocationImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/SourceLocation;


# instance fields
.field column:I

.field fileName:Ljava/lang/String;

.field line:I

.field withinType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;II)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->withinType:Ljava/lang/Class;

    .line 27
    iput-object p2, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->fileName:Ljava/lang/String;

    .line 28
    iput p3, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->line:I

    .line 29
    iput p4, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->column:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->column:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->line:I

    return v0
.end method

.method public getWithinType()Ljava/lang/Class;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->withinType:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->getLine()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->getColumn()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->getColumn()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

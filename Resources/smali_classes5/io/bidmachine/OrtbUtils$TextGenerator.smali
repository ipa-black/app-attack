.class final Lio/bidmachine/OrtbUtils$TextGenerator;
.super Ljava/lang/Object;
.source "OrtbUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/OrtbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextGenerator"
.end annotation


# instance fields
.field private atStartOfLine:Z

.field private final indent:Ljava/lang/StringBuilder;

.field private final output:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->indent:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->atStartOfLine:Z

    .line 93
    iput-object p1, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->output:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lio/bidmachine/OrtbUtils$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private write(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-boolean v0, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->atStartOfLine:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->atStartOfLine:Z

    .line 128
    iget-object v0, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->output:Ljava/lang/Appendable;

    iget-object v1, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->indent:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 131
    :cond_0
    iget-object v0, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->output:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    return-void
.end method


# virtual methods
.method indent()V
    .locals 2

    .line 97
    iget-object v0, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->indent:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method outdent()V
    .locals 3

    .line 101
    iget-object v0, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->indent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->indent:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Outdent() without matching Indent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method print(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 114
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 115
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/bidmachine/OrtbUtils$TextGenerator;->write(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 117
    iput-boolean v2, p0, Lio/bidmachine/OrtbUtils$TextGenerator;->atStartOfLine:Z

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->write(Ljava/lang/CharSequence;)V

    return-void
.end method

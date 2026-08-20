.class Lorg/apache/asn1/ber/TupleTreeAnalyzer$8;
.super Ljavax/swing/filechooser/FileFilter;
.source "TupleTreeAnalyzer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 556
    invoke-direct {p0}, Ljavax/swing/filechooser/FileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 553
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".ber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 558
    const-string v0, "BER encoded data files"

    return-object v0
.end method

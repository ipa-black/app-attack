.class public Lorg/apache/ldap/server/db/gui/PartitionViewer;
.super Ljava/lang/Object;
.source "PartitionViewer.java"


# instance fields
.field private db:Lorg/apache/ldap/server/db/Database;

.field private eng:Lorg/apache/ldap/server/db/SearchEngine;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/PartitionViewer;->db:Lorg/apache/ldap/server/db/Database;

    .line 43
    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/PartitionViewer;->eng:Lorg/apache/ldap/server/db/SearchEngine;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/apache/ldap/server/db/gui/MainFrame;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/PartitionViewer;->db:Lorg/apache/ldap/server/db/Database;

    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/PartitionViewer;->eng:Lorg/apache/ldap/server/db/SearchEngine;

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/server/db/gui/MainFrame;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;)V

    .line 84
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 86
    iget v3, v2, Ljava/awt/Dimension;->height:I

    iget v4, v1, Ljava/awt/Dimension;->height:I

    if-le v3, v4, :cond_0

    .line 87
    iget v3, v1, Ljava/awt/Dimension;->height:I

    goto :goto_0

    :cond_0
    iget v3, v2, Ljava/awt/Dimension;->height:I

    .line 86
    :goto_0
    iput v3, v2, Ljava/awt/Dimension;->height:I

    .line 88
    iget v3, v2, Ljava/awt/Dimension;->width:I

    iget v4, v1, Ljava/awt/Dimension;->width:I

    if-le v3, v4, :cond_1

    .line 89
    iget v3, v1, Ljava/awt/Dimension;->width:I

    goto :goto_1

    :cond_1
    iget v3, v2, Ljava/awt/Dimension;->width:I

    .line 88
    :goto_1
    iput v3, v2, Ljava/awt/Dimension;->width:I

    .line 90
    iget v3, v1, Ljava/awt/Dimension;->width:I

    iget v4, v2, Ljava/awt/Dimension;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 91
    iget v1, v1, Ljava/awt/Dimension;->height:I

    iget v4, v2, Ljava/awt/Dimension;->height:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 90
    invoke-virtual {v0, v3, v1}, Lorg/apache/ldap/server/db/gui/MainFrame;->setLocation(II)V

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/MainFrame;->setVisible(Z)V

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

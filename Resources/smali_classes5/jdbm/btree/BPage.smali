.class public final Ljdbm/btree/BPage;
.super Ljava/lang/Object;
.source "BPage.java"

# interfaces
.implements Ljdbm/helper/Serializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/btree/BPage$Browser;,
        Ljdbm/btree/BPage$RemoveResult;,
        Ljdbm/btree/BPage$InsertResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x1L


# instance fields
.field transient _btree:Ljdbm/btree/BTree;

.field protected _children:[J

.field protected _first:I

.field protected _isLeaf:Z

.field protected _keys:[Ljava/lang/Object;

.field protected _next:J

.field protected _previous:J

.field protected transient _recid:J

.field protected _values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljdbm/btree/BTree;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    .line 189
    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Ljdbm/btree/BPage;->_first:I

    .line 191
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x2

    aput-object p2, p1, v1

    .line 193
    iget-object p1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p2, p2, Ljdbm/btree/BTree;->_pageSize:I

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    aput-object v1, p1, p2

    .line 195
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    .line 196
    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p2, p2, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 p2, p2, -0x2

    aput-object p3, p1, p2

    .line 197
    iget-object p1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p2, p2, Ljdbm/btree/BTree;->_pageSize:I

    sub-int/2addr p2, v0

    aput-object v1, p1, p2

    .line 199
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p1, p1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    invoke-interface {p1, p0, p0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide p1

    iput-wide p1, p0, Ljdbm/btree/BPage;->_recid:J

    return-void
.end method

.method constructor <init>(Ljdbm/btree/BTree;Ljdbm/btree/BPage;Ljdbm/btree/BPage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    .line 165
    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Ljdbm/btree/BPage;->_first:I

    .line 167
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p3}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 169
    iget-object p1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 171
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    new-array p1, p1, [J

    iput-object p1, p0, Ljdbm/btree/BPage;->_children:[J

    .line 172
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v0, v0, -0x2

    iget-wide v1, p3, Ljdbm/btree/BPage;->_recid:J

    aput-wide v1, p1, v0

    .line 173
    iget-object p1, p0, Ljdbm/btree/BPage;->_children:[J

    iget-object p3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p3, p3, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 p3, p3, -0x1

    iget-wide v0, p2, Ljdbm/btree/BPage;->_recid:J

    aput-wide v0, p1, p3

    .line 175
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p1, p1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    invoke-interface {p1, p0, p0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide p1

    iput-wide p1, p0, Ljdbm/btree/BPage;->_recid:J

    return-void
.end method

.method constructor <init>(Ljdbm/btree/BTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    .line 211
    iput-boolean p2, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    .line 214
    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljdbm/btree/BPage;->_first:I

    .line 216
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 218
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    new-array p1, p1, [J

    iput-object p1, p0, Ljdbm/btree/BPage;->_children:[J

    .line 223
    :goto_0
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p1, p1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    invoke-interface {p1, p0, p0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide p1

    iput-wide p1, p0, Ljdbm/btree/BPage;->_recid:J

    return-void
.end method

.method static synthetic access$000(Ljdbm/btree/BPage;J)Ljdbm/btree/BPage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object p0

    return-object p0
.end method

.method private assertConsistency()V
    .locals 3

    .line 917
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    :goto_0
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 918
    iget-object v1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v2, v1, v0

    check-cast v2, [B

    add-int/lit8 v0, v0, 0x1

    aget-object v1, v1, v0

    check-cast v1, [B

    invoke-direct {p0, v2, v1}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 919
    invoke-direct {p0, v0}, Ljdbm/btree/BPage;->dump(I)V

    .line 920
    new-instance v0, Ljava/lang/Error;

    const-string v1, "BPage not ordered"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 841
    :cond_1
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v0, v0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V
    .locals 2

    .line 805
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v1, p2, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    iget-object p0, p0, Ljdbm/btree/BPage;->_children:[J

    iget-object p2, p2, Ljdbm/btree/BPage;->_children:[J

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V
    .locals 2

    .line 794
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v1, p2, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    iget-object p0, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    iget-object p2, p2, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private dump(I)V
    .locals 6

    .line 875
    const-string v0, ""

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 876
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-------------------------------------- BPage recid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "first="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Ljdbm/btree/BPage;->_first:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 880
    :goto_1
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p1, p1, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v1, p1, :cond_2

    .line 881
    iget-boolean p1, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    const-string v2, " "

    const-string v3, "] "

    const-string v4, "BPage ["

    if-eqz p1, :cond_1

    .line 882
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 884
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljdbm/btree/BPage;->_children:[J

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 887
    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "--------------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private findChildren(Ljava/lang/Object;)I
    .locals 4

    .line 676
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    .line 677
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ge v0, v1, :cond_1

    add-int v2, v0, v1

    .line 681
    div-int/lit8 v2, v2, 0x2

    .line 682
    iget-object v3, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-direct {p0, v3, p1}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static insertChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V
    .locals 5

    .line 718
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 719
    iget-object v1, p0, Ljdbm/btree/BPage;->_children:[J

    .line 720
    iget v2, p0, Ljdbm/btree/BPage;->_first:I

    sub-int v3, p1, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, -0x1

    .line 724
    invoke-static {v0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    invoke-static {v1, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 726
    iget v2, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljdbm/btree/BPage;->_first:I

    .line 727
    aput-object p2, v0, p1

    .line 728
    aput-wide p3, v1, p1

    return-void
.end method

.method private static insertEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 698
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 699
    iget-object v1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    .line 700
    iget v2, p0, Ljdbm/btree/BPage;->_first:I

    sub-int v3, p1, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, -0x1

    .line 704
    invoke-static {v0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    invoke-static {v1, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    iget v2, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljdbm/btree/BPage;->_first:I

    .line 707
    aput-object p2, v0, p1

    .line 708
    aput-object p3, v1, p1

    return-void
.end method

.method private loadBPage(J)Ljdbm/btree/BPage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v0, v0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2, p0}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/btree/BPage;

    .line 827
    iput-wide p1, v0, Ljdbm/btree/BPage;->_recid:J

    .line 828
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iput-object p1, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    return-object v0
.end method

.method static readByteArray(Ljava/io/ObjectInput;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 851
    :cond_0
    new-array v0, v0, [B

    .line 852
    invoke-interface {p0, v0}, Ljava/io/ObjectInput;->readFully([B)V

    return-object v0
.end method

.method private static removeEntry(Ljdbm/btree/BPage;I)V
    .locals 5

    .line 736
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 737
    iget-object v1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    .line 738
    iget v2, p0, Ljdbm/btree/BPage;->_first:I

    sub-int/2addr p1, v2

    add-int/lit8 v3, v2, 0x1

    .line 741
    invoke-static {v0, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    .line 742
    aput-object v4, v0, v2

    .line 743
    invoke-static {v1, v2, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 744
    aput-object v4, v1, v2

    .line 745
    iget p1, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljdbm/btree/BPage;->_first:I

    return-void
.end method

.method private static setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V
    .locals 1

    .line 783
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 784
    iget-object p0, p0, Ljdbm/btree/BPage;->_children:[J

    aput-wide p3, p0, p1

    return-void
.end method

.method private static setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 773
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 774
    iget-object p0, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aput-object p3, p0, p1

    return-void
.end method

.method static writeByteArray(Ljava/io/ObjectOutput;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 861
    invoke-interface {p0, p1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    .line 863
    :cond_0
    array-length v0, p1

    invoke-interface {p0, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 864
    invoke-interface {p0, p1}, Ljava/io/ObjectOutput;->write([B)V

    :goto_0
    return-void
.end method


# virtual methods
.method assertConsistencyRecursive(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    invoke-direct {p0}, Ljdbm/btree/BPage;->assertConsistency()V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_2

    .line 935
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    :goto_0
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v0, v1, :cond_2

    .line 936
    iget-object v1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 937
    :cond_0
    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v1

    .line 938
    iget-object v2, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, [B

    invoke-virtual {v1}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    .line 943
    invoke-virtual {v1, p1}, Ljdbm/btree/BPage;->assertConsistencyRecursive(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 939
    invoke-direct {p0, p1}, Ljdbm/btree/BPage;->dump(I)V

    .line 940
    invoke-direct {v1, p1}, Ljdbm/btree/BPage;->dump(I)V

    .line 941
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Invalid child subordinate key"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method childBPage(I)Ljdbm/btree/BPage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Ljdbm/btree/BPage;->_children:[J

    aget-wide v1, v0, p1

    invoke-direct {p0, v1, v2}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object p1

    return-object p1
.end method

.method public deserialize([B)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    new-instance v0, Ljdbm/btree/BPage;

    invoke-direct {v0}, Ljdbm/btree/BPage;-><init>()V

    .line 964
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 965
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 967
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v2, :cond_0

    .line 969
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Ljdbm/btree/BPage;->_previous:J

    .line 970
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Ljdbm/btree/BPage;->_next:J

    .line 973
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, v0, Ljdbm/btree/BPage;->_first:I

    .line 975
    iget-object v2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v2, v2, Ljdbm/btree/BTree;->_pageSize:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 977
    :try_start_0
    iget v2, v0, Ljdbm/btree/BPage;->_first:I

    :goto_0
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v3, v3, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v2, v3, :cond_3

    .line 978
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v3, v3, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    if-nez v3, :cond_1

    .line 979
    iget-object v3, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_1

    .line 981
    :cond_1
    invoke-static {p1}, Ljdbm/btree/BPage;->readByteArray(Ljava/io/ObjectInput;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 983
    iget-object v4, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v5, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    invoke-interface {v5, v3}, Ljdbm/helper/Serializer;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 991
    :cond_3
    iget-boolean v2, v0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v2, :cond_6

    .line 992
    iget-object v2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v2, v2, Ljdbm/btree/BTree;->_pageSize:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    .line 994
    :try_start_1
    iget v2, v0, Ljdbm/btree/BPage;->_first:I

    :goto_2
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v3, v3, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v2, v3, :cond_7

    .line 995
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v3, v3, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    if-nez v3, :cond_4

    .line 996
    iget-object v3, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_3

    .line 998
    :cond_4
    invoke-static {p1}, Ljdbm/btree/BPage;->readByteArray(Ljava/io/ObjectInput;)[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1000
    iget-object v4, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    iget-object v5, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    invoke-interface {v5, v3}, Ljdbm/helper/Serializer;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1005
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_6
    iget-object v2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v2, v2, Ljdbm/btree/BTree;->_pageSize:I

    new-array v2, v2, [J

    iput-object v2, v0, Ljdbm/btree/BPage;->_children:[J

    .line 1009
    iget v2, v0, Ljdbm/btree/BPage;->_first:I

    :goto_4
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v3, v3, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v2, v3, :cond_7

    .line 1010
    iget-object v3, v0, Ljdbm/btree/BPage;->_children:[J

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1013
    :cond_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    .line 1014
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v0

    :catch_1
    move-exception p1

    .line 988
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dumpRecursive(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, 0x1

    if-lez p1, :cond_1

    .line 901
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    :goto_0
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v0, v1, :cond_1

    .line 902
    iget-object v1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 903
    :cond_0
    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v1

    .line 904
    invoke-direct {v1, p2}, Ljdbm/btree/BPage;->dump(I)V

    .line 905
    invoke-virtual {v1, p1, p2}, Ljdbm/btree/BPage;->dumpRecursive(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method find(ILjava/lang/Object;)Ljdbm/helper/TupleBrowser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-direct {p0, p2}, Ljdbm/btree/BPage;->findChildren(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    .line 282
    new-instance p1, Ljdbm/btree/BPage$Browser;

    invoke-direct {p1, p0, v0}, Ljdbm/btree/BPage$Browser;-><init>(Ljdbm/btree/BPage;I)V

    return-object p1

    .line 285
    :cond_0
    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p1, p2}, Ljdbm/btree/BPage;->find(ILjava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object p1

    return-object p1
.end method

.method findFirst()Ljdbm/helper/TupleBrowser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-boolean v0, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljdbm/btree/BPage$Browser;

    iget v1, p0, Ljdbm/btree/BPage;->_first:I

    invoke-direct {v0, p0, v1}, Ljdbm/btree/BPage$Browser;-><init>(Ljdbm/btree/BPage;I)V

    return-object v0

    .line 302
    :cond_0
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljdbm/btree/BPage;->findFirst()Ljdbm/helper/TupleBrowser;

    move-result-object v0

    return-object v0
.end method

.method getLargestKey()Ljava/lang/Object;
    .locals 2

    .line 233
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method insert(ILjava/lang/Object;Ljava/lang/Object;Z)Ljdbm/btree/BPage$InsertResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-direct {p0, p2}, Ljdbm/btree/BPage;->findChildren(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 332
    new-instance v4, Ljdbm/btree/BPage$InsertResult;

    invoke-direct {v4}, Ljdbm/btree/BPage$InsertResult;-><init>()V

    .line 340
    iget-object v5, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-direct {p0, p2, v5}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_1

    .line 345
    iget-object p1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object p1, p1, v0

    iput-object p1, v4, Ljdbm/btree/BPage$InsertResult;->_existing:Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 347
    iget-object p1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aput-object p3, p1, v0

    .line 348
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p1, p1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide p2, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p1, p2, p3, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    :cond_0
    return-object v4

    :cond_1
    move-wide v5, v1

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v4

    .line 356
    invoke-virtual {v4, p1, p2, p3, p4}, Ljdbm/btree/BPage;->insert(ILjava/lang/Object;Ljava/lang/Object;Z)Ljdbm/btree/BPage$InsertResult;

    move-result-object p2

    .line 358
    iget-object p4, p2, Ljdbm/btree/BPage$InsertResult;->_existing:Ljava/lang/Object;

    if-eqz p4, :cond_3

    return-object p2

    .line 363
    :cond_3
    iget-object p4, p2, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    if-nez p4, :cond_4

    return-object p2

    .line 373
    :cond_4
    iget-object p4, p2, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    invoke-virtual {p4}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object p4

    .line 374
    iget-object v5, p2, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    iget-wide v5, v5, Ljdbm/btree/BPage;->_recid:J

    .line 377
    iget-object v7, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-virtual {v4}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v0

    .line 380
    iput-object v3, p2, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    move-object v4, p2

    move-object p2, p4

    .line 385
    :goto_0
    invoke-virtual {p0}, Ljdbm/btree/BPage;->isFull()Z

    move-result p4

    if-nez p4, :cond_6

    if-nez p1, :cond_5

    add-int/lit8 v0, v0, -0x1

    .line 387
    invoke-static {p0, v0, p2, p3}, Ljdbm/btree/BPage;->insertEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 389
    invoke-static {p0, v0, p2, v5, v6}, Ljdbm/btree/BPage;->insertChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 391
    :goto_1
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p1, p1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide p2, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p1, p2, p3, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    return-object v4

    .line 396
    :cond_6
    iget-object p4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget p4, p4, Ljdbm/btree/BTree;->_pageSize:I

    shr-int/lit8 p4, p4, 0x1

    .line 397
    new-instance v7, Ljdbm/btree/BPage;

    iget-object v8, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-boolean v9, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    invoke-direct {v7, v8, v9}, Ljdbm/btree/BPage;-><init>(Ljdbm/btree/BTree;Z)V

    const/4 v8, 0x0

    if-ge v0, p4, :cond_8

    if-nez p1, :cond_7

    .line 405
    invoke-static {p0, v8, v7, p4, v0}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    add-int v5, p4, v0

    .line 406
    invoke-static {v7, v5, p2, p3}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    sub-int p2, p4, v0

    add-int/lit8 p2, p2, -0x1

    .line 407
    invoke-static {p0, v0, v7, v5, p2}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    goto :goto_2

    .line 409
    :cond_7
    invoke-static {p0, v8, v7, p4, v0}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    add-int p3, p4, v0

    .line 410
    invoke-static {v7, p3, p2, v5, v6}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    add-int/lit8 p3, p3, 0x1

    sub-int p2, p4, v0

    add-int/lit8 p2, p2, -0x1

    .line 411
    invoke-static {p0, v0, v7, p3, p2}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    goto :goto_2

    :cond_8
    if-nez p1, :cond_9

    .line 420
    invoke-static {p0, v8, v7, p4, p4}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    add-int/lit8 v5, p4, -0x1

    sub-int v6, v0, p4

    .line 421
    invoke-static {p0, p4, p0, v5, v6}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    add-int/lit8 v0, v0, -0x1

    .line 422
    invoke-static {p0, v0, p2, p3}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 424
    :cond_9
    invoke-static {p0, v8, v7, p4, p4}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    add-int/lit8 p3, p4, -0x1

    sub-int v9, v0, p4

    .line 425
    invoke-static {p0, p4, p0, p3, v9}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    add-int/lit8 v0, v0, -0x1

    .line 426
    invoke-static {p0, v0, p2, v5, v6}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    :goto_2
    add-int/lit8 p4, p4, -0x1

    .line 430
    iput p4, p0, Ljdbm/btree/BPage;->_first:I

    .line 433
    :goto_3
    iget p2, p0, Ljdbm/btree/BPage;->_first:I

    if-ge v8, p2, :cond_b

    if-nez p1, :cond_a

    .line 435
    invoke-static {p0, v8, v3, v3}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 437
    :cond_a
    invoke-static {p0, v8, v3, v1, v2}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 441
    :cond_b
    iget-boolean p1, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz p1, :cond_d

    .line 443
    iget-wide p1, p0, Ljdbm/btree/BPage;->_previous:J

    iput-wide p1, v7, Ljdbm/btree/BPage;->_previous:J

    .line 444
    iget-wide p1, p0, Ljdbm/btree/BPage;->_recid:J

    iput-wide p1, v7, Ljdbm/btree/BPage;->_next:J

    .line 445
    iget-wide p1, p0, Ljdbm/btree/BPage;->_previous:J

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_c

    .line 446
    invoke-direct {p0, p1, p2}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object p1

    .line 447
    iget-wide p2, v7, Ljdbm/btree/BPage;->_recid:J

    iput-wide p2, p1, Ljdbm/btree/BPage;->_next:J

    .line 448
    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p2, p2, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide p3, p0, Ljdbm/btree/BPage;->_previous:J

    invoke-interface {p2, p3, p4, p1, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 450
    :cond_c
    iget-wide p1, v7, Ljdbm/btree/BPage;->_recid:J

    iput-wide p1, p0, Ljdbm/btree/BPage;->_previous:J

    .line 453
    :cond_d
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p1, p1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide p2, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p1, p2, p3, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 454
    iget-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p1, p1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide p2, v7, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p1, p2, p3, v7, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 456
    iput-object v7, v4, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    return-object v4
.end method

.method isEmpty()Z
    .locals 4

    .line 242
    iget-boolean v0, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 243
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    iget-object v3, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 245
    :cond_1
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    iget-object v3, p0, Ljdbm/btree/BPage;->_children:[J

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method isFull()Z
    .locals 1

    .line 254
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method remove(ILjava/lang/Object;)Ljdbm/btree/BPage$RemoveResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    div-int/lit8 v0, v0, 0x2

    .line 474
    invoke-direct {p0, p2}, Ljdbm/btree/BPage;->findChildren(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 479
    iget-object p1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object p1, p1, v1

    invoke-direct {p0, p1, p2}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    .line 482
    new-instance p1, Ljdbm/btree/BPage$RemoveResult;

    invoke-direct {p1}, Ljdbm/btree/BPage$RemoveResult;-><init>()V

    .line 483
    iget-object p2, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object p2, p2, v1

    iput-object p2, p1, Ljdbm/btree/BPage$RemoveResult;->_value:Ljava/lang/Object;

    .line 484
    invoke-static {p0, v1}, Ljdbm/btree/BPage;->removeEntry(Ljdbm/btree/BPage;I)V

    .line 487
    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p2, p2, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v3, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p2, v3, v4, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    goto/16 :goto_a

    .line 480
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Key not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 491
    :cond_1
    invoke-virtual {p0, v1}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v3

    .line 492
    invoke-virtual {v3, p1, p2}, Ljdbm/btree/BPage;->remove(ILjava/lang/Object;)Ljdbm/btree/BPage$RemoveResult;

    move-result-object p1

    .line 495
    iget-object p2, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v1

    .line 496
    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p2, p2, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p2, v4, v5, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 498
    iget-boolean p2, p1, Ljdbm/btree/BPage$RemoveResult;->_underflow:Z

    if-eqz p2, :cond_16

    .line 500
    iget p2, v3, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v4, v0, 0x1

    if-ne p2, v4, :cond_15

    .line 503
    iget-object p2, p0, Ljdbm/btree/BPage;->_children:[J

    array-length p2, p2

    sub-int/2addr p2, v2

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    if-ge v1, p2, :cond_b

    add-int/lit8 p2, v1, 0x1

    .line 505
    invoke-virtual {p0, p2}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object p2

    .line 506
    iget v10, p2, Ljdbm/btree/BPage;->_first:I

    if-ge v10, v0, :cond_5

    sub-int v5, v0, v10

    add-int/2addr v5, v2

    .line 509
    div-int/lit8 v5, v5, 0x2

    add-int v6, v10, v5

    .line 510
    iput v6, p2, Ljdbm/btree/BPage;->_first:I

    .line 511
    iget v6, v3, Ljdbm/btree/BPage;->_first:I

    sub-int/2addr v6, v5

    iput v6, v3, Ljdbm/btree/BPage;->_first:I

    .line 512
    iget-boolean v6, v3, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v6, :cond_2

    sub-int v6, v4, v5

    add-int/lit8 v11, v0, -0x1

    .line 513
    invoke-static {v3, v4, v3, v6, v11}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v4, v5

    .line 514
    invoke-static {p2, v10, v3, v4, v5}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    goto :goto_0

    :cond_2
    sub-int v6, v4, v5

    add-int/lit8 v11, v0, -0x1

    .line 516
    invoke-static {v3, v4, v3, v6, v11}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v4, v5

    .line 517
    invoke-static {p2, v10, v3, v4, v5}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    :goto_0
    move v4, v10

    :goto_1
    add-int v6, v10, v5

    if-ge v4, v6, :cond_4

    .line 521
    iget-boolean v6, p2, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v6, :cond_3

    .line 522
    invoke-static {p2, v4, v9, v9}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 524
    :cond_3
    invoke-static {p2, v4, v9, v7, v8}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 529
    :cond_4
    iget-object v4, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    .line 534
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v4, v5, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 535
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, p2, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v4, v5, p2, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 536
    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p2, p2, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, v3, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p2, v4, v5, v3, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    goto/16 :goto_a

    :cond_5
    if-ne v10, v0, :cond_a

    .line 544
    iput v2, p2, Ljdbm/btree/BPage;->_first:I

    .line 545
    iget-boolean v10, v3, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v10, :cond_6

    add-int/lit8 v10, v0, -0x1

    .line 546
    invoke-static {v3, v4, p2, v2, v10}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v0, -0x1

    .line 548
    invoke-static {v3, v4, p2, v2, v10}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 550
    :goto_3
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v4, v4, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v10, p2, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v4, v10, v11, p2, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 553
    iget-boolean p2, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz p2, :cond_7

    .line 554
    iget p2, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v4, p2, 0x1

    sub-int/2addr v1, p2

    invoke-static {p0, p2, p0, v4, v1}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 555
    iget p2, p0, Ljdbm/btree/BPage;->_first:I

    invoke-static {p0, p2, v9, v9}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 557
    :cond_7
    iget p2, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v4, p2, 0x1

    sub-int/2addr v1, p2

    invoke-static {p0, p2, p0, v4, v1}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 558
    iget p2, p0, Ljdbm/btree/BPage;->_first:I

    invoke-static {p0, p2, v9, v7, v8}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 560
    :goto_4
    iget p2, p0, Ljdbm/btree/BPage;->_first:I

    add-int/2addr p2, v2

    iput p2, p0, Ljdbm/btree/BPage;->_first:I

    .line 561
    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p2, p2, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v7, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p2, v7, v8, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 564
    iget-wide v7, v3, Ljdbm/btree/BPage;->_previous:J

    cmp-long p2, v7, v5

    if-eqz p2, :cond_8

    .line 565
    invoke-direct {p0, v7, v8}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object p2

    .line 566
    iget-wide v7, v3, Ljdbm/btree/BPage;->_next:J

    iput-wide v7, p2, Ljdbm/btree/BPage;->_next:J

    .line 567
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v7, p2, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v7, v8, p2, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 569
    :cond_8
    iget-wide v7, v3, Ljdbm/btree/BPage;->_next:J

    cmp-long p2, v7, v5

    if-eqz p2, :cond_9

    .line 570
    invoke-direct {p0, v7, v8}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object p2

    .line 571
    iget-wide v4, v3, Ljdbm/btree/BPage;->_previous:J

    iput-wide v4, p2, Ljdbm/btree/BPage;->_previous:J

    .line 572
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, p2, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v4, v5, p2, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 576
    :cond_9
    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p2, p2, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v3, v3, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p2, v3, v4}, Ljdbm/RecordManager;->delete(J)V

    goto/16 :goto_a

    .line 541
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error during underflow [2]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    sub-int/2addr v1, v2

    .line 580
    invoke-virtual {p0, v1}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object p2

    .line 581
    iget v10, p2, Ljdbm/btree/BPage;->_first:I

    if-ge v10, v0, :cond_f

    sub-int v5, v0, v10

    add-int/2addr v5, v2

    .line 584
    div-int/lit8 v5, v5, 0x2

    add-int v6, v10, v5

    .line 585
    iput v6, p2, Ljdbm/btree/BPage;->_first:I

    .line 586
    iget v6, v3, Ljdbm/btree/BPage;->_first:I

    sub-int/2addr v6, v5

    iput v6, v3, Ljdbm/btree/BPage;->_first:I

    .line 587
    iget-boolean v6, v3, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v6, :cond_c

    mul-int/lit8 v6, v0, 0x2

    sub-int v11, v6, v5

    sub-int/2addr v4, v5

    .line 588
    invoke-static {p2, v11, v3, v4, v5}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    add-int v4, v10, v5

    sub-int/2addr v6, v10

    sub-int/2addr v6, v5

    .line 590
    invoke-static {p2, v10, p2, v4, v6}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    goto :goto_5

    :cond_c
    mul-int/lit8 v6, v0, 0x2

    sub-int v11, v6, v5

    sub-int/2addr v4, v5

    .line 593
    invoke-static {p2, v11, v3, v4, v5}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    add-int v4, v10, v5

    sub-int/2addr v6, v10

    sub-int/2addr v6, v5

    .line 595
    invoke-static {p2, v10, p2, v4, v6}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    :goto_5
    move v4, v10

    :goto_6
    add-int v6, v10, v5

    if-ge v4, v6, :cond_e

    .line 600
    iget-boolean v6, p2, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v6, :cond_d

    .line 601
    invoke-static {p2, v4, v9, v9}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 603
    :cond_d
    invoke-static {p2, v4, v9, v7, v8}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 608
    :cond_e
    iget-object v4, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-virtual {p2}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    .line 613
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v4, v5, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 614
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, p2, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v4, v5, p2, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 615
    iget-object p2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object p2, p2, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, v3, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {p2, v4, v5, v3, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    goto/16 :goto_a

    :cond_f
    if-ne v10, v0, :cond_14

    .line 623
    iput v2, v3, Ljdbm/btree/BPage;->_first:I

    .line 624
    iget-boolean v4, v3, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v4, :cond_10

    .line 625
    invoke-static {p2, v0, v3, v2, v0}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    goto :goto_8

    .line 627
    :cond_10
    invoke-static {p2, v0, v3, v2, v0}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 629
    :goto_8
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v4, v4, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v10, v3, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v4, v10, v11, v3, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 632
    iget-boolean v3, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v3, :cond_11

    .line 633
    iget v3, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v1, v3

    invoke-static {p0, v3, p0, v4, v1}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 634
    iget v1, p0, Ljdbm/btree/BPage;->_first:I

    invoke-static {p0, v1, v9, v9}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 636
    :cond_11
    iget v3, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v1, v3

    invoke-static {p0, v3, p0, v4, v1}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 637
    iget v1, p0, Ljdbm/btree/BPage;->_first:I

    invoke-static {p0, v1, v9, v7, v8}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 639
    :goto_9
    iget v1, p0, Ljdbm/btree/BPage;->_first:I

    add-int/2addr v1, v2

    iput v1, p0, Ljdbm/btree/BPage;->_first:I

    .line 640
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v3, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v3, v4, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 643
    iget-wide v3, p2, Ljdbm/btree/BPage;->_previous:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_12

    .line 644
    invoke-direct {p0, v3, v4}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object v1

    .line 645
    iget-wide v3, p2, Ljdbm/btree/BPage;->_next:J

    iput-wide v3, v1, Ljdbm/btree/BPage;->_next:J

    .line 646
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v3, v3, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v7, v1, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v3, v7, v8, v1, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 648
    :cond_12
    iget-wide v3, p2, Ljdbm/btree/BPage;->_next:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_13

    .line 649
    invoke-direct {p0, v3, v4}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object v1

    .line 650
    iget-wide v3, p2, Ljdbm/btree/BPage;->_previous:J

    iput-wide v3, v1, Ljdbm/btree/BPage;->_previous:J

    .line 651
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v3, v3, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, v1, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v3, v4, v5, v1, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 655
    :cond_13
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v3, p2, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v3, v4}, Ljdbm/RecordManager;->delete(J)V

    goto :goto_a

    .line 620
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error during underflow [3]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 501
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error during underflow [1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 662
    :cond_16
    :goto_a
    iget p2, p0, Ljdbm/btree/BPage;->_first:I

    if-le p2, v0, :cond_17

    goto :goto_b

    :cond_17
    const/4 v2, 0x0

    :goto_b
    iput-boolean v2, p1, Ljdbm/btree/BPage$RemoveResult;->_underflow:Z

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    check-cast p1, Ljdbm/btree/BPage;

    .line 1040
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1041
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1043
    iget-boolean v2, p1, Ljdbm/btree/BPage;->_isLeaf:Z

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1044
    iget-boolean v2, p1, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v2, :cond_0

    .line 1045
    iget-wide v2, p1, Ljdbm/btree/BPage;->_previous:J

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1046
    iget-wide v2, p1, Ljdbm/btree/BPage;->_next:J

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1049
    :cond_0
    iget v2, p1, Ljdbm/btree/BPage;->_first:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1051
    iget v2, p1, Ljdbm/btree/BPage;->_first:I

    :goto_0
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v3, v3, Ljdbm/btree/BTree;->_pageSize:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 1052
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v3, v3, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    if-nez v3, :cond_1

    .line 1053
    iget-object v3, p1, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 1055
    :cond_1
    iget-object v3, p1, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 1056
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v3, v3, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    iget-object v4, p1, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ljdbm/helper/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v3

    .line 1057
    invoke-static {v1, v3}, Ljdbm/btree/BPage;->writeByteArray(Ljava/io/ObjectOutput;[B)V

    goto :goto_1

    .line 1059
    :cond_2
    invoke-static {v1, v4}, Ljdbm/btree/BPage;->writeByteArray(Ljava/io/ObjectOutput;[B)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1064
    :cond_3
    iget-boolean v2, p1, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v2, :cond_6

    .line 1065
    iget v2, p1, Ljdbm/btree/BPage;->_first:I

    :goto_2
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v3, v3, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v2, v3, :cond_7

    .line 1066
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v3, v3, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    if-nez v3, :cond_4

    .line 1067
    iget-object v3, p1, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_3

    .line 1069
    :cond_4
    iget-object v3, p1, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 1070
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v3, v3, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    iget-object v5, p1, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-interface {v3, v5}, Ljdbm/helper/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v3

    .line 1071
    invoke-static {v1, v3}, Ljdbm/btree/BPage;->writeByteArray(Ljava/io/ObjectOutput;[B)V

    goto :goto_3

    .line 1073
    :cond_5
    invoke-static {v1, v4}, Ljdbm/btree/BPage;->writeByteArray(Ljava/io/ObjectOutput;[B)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1078
    :cond_6
    iget v2, p1, Ljdbm/btree/BPage;->_first:I

    :goto_4
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v3, v3, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v2, v3, :cond_7

    .line 1079
    iget-object v3, p1, Ljdbm/btree/BPage;->_children:[J

    aget-wide v4, v3, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1083
    :cond_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 1084
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 1085
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 1086
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1
.end method

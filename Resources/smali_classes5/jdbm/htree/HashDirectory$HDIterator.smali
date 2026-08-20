.class public Ljdbm/htree/HashDirectory$HDIterator;
.super Ljdbm/helper/FastIterator;
.source "HashDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/htree/HashDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HDIterator"
.end annotation


# instance fields
.field private _child:I

.field private _childStack:Ljava/util/ArrayList;

.field private _dir:Ljdbm/htree/HashDirectory;

.field private _dirStack:Ljava/util/ArrayList;

.field private _iter:Ljava/util/Iterator;

.field private _iterateKeys:Z

.field private final synthetic this$0:Ljdbm/htree/HashDirectory;


# direct methods
.method constructor <init>(Ljdbm/htree/HashDirectory;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-direct {p0}, Ljdbm/helper/FastIterator;-><init>()V

    iput-object p1, p0, Ljdbm/htree/HashDirectory$HDIterator;->this$0:Ljdbm/htree/HashDirectory;

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dirStack:Ljava/util/ArrayList;

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_childStack:Ljava/util/ArrayList;

    .line 459
    iput-object p1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    const/4 p1, -0x1

    .line 460
    iput p1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    .line 461
    iput-boolean p2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iterateKeys:Z

    .line 463
    invoke-direct {p0}, Ljdbm/htree/HashDirectory$HDIterator;->prepareNext()V

    return-void
.end method

.method private prepareNext()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 501
    :cond_0
    iget v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    const/16 v5, 0x100

    if-lt v4, v5, :cond_2

    .line 504
    iget-object v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dirStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 510
    :cond_1
    iget-object v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dirStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljdbm/htree/HashDirectory;

    iput-object v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    .line 511
    iget-object v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_childStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    goto :goto_0

    .line 514
    :cond_2
    iget-object v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    invoke-static {v2}, Ljdbm/htree/HashDirectory;->access$000(Ljdbm/htree/HashDirectory;)[J

    move-result-object v2

    iget v3, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    aget-wide v3, v2, v3

    move-wide v2, v3

    :goto_0
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    if-eqz v4, :cond_5

    .line 521
    iget-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->this$0:Ljdbm/htree/HashDirectory;

    invoke-static {v0}, Ljdbm/htree/HashDirectory;->access$100(Ljdbm/htree/HashDirectory;)Ljdbm/RecordManager;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/htree/HashNode;

    .line 524
    instance-of v1, v0, Ljdbm/htree/HashDirectory;

    if-eqz v1, :cond_3

    .line 526
    iget-object v1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dirStack:Ljava/util/ArrayList;

    iget-object v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_childStack:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    check-cast v0, Ljdbm/htree/HashDirectory;

    iput-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    const/4 v1, -0x1

    .line 530
    iput v1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    .line 533
    iget-object v1, p0, Ljdbm/htree/HashDirectory$HDIterator;->this$0:Ljdbm/htree/HashDirectory;

    invoke-static {v1}, Ljdbm/htree/HashDirectory;->access$100(Ljdbm/htree/HashDirectory;)Ljdbm/RecordManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 534
    invoke-direct {p0}, Ljdbm/htree/HashDirectory$HDIterator;->prepareNext()V

    goto :goto_1

    .line 537
    :cond_3
    check-cast v0, Ljdbm/htree/HashBucket;

    .line 538
    iget-boolean v1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iterateKeys:Z

    if-eqz v1, :cond_4

    .line 539
    invoke-virtual {v0}, Ljdbm/htree/HashBucket;->getKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    goto :goto_1

    .line 541
    :cond_4
    invoke-virtual {v0}, Ljdbm/htree/HashBucket;->getValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    :goto_1
    return-void

    .line 518
    :cond_5
    new-instance v0, Ljava/lang/Error;

    const-string v1, "child_recid cannot be 0"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2

    .line 473
    iget-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljdbm/htree/HashDirectory$HDIterator;->prepareNext()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    iget-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p0}, Ljdbm/htree/HashDirectory$HDIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 479
    new-instance v1, Ljdbm/helper/IterationException;

    invoke-direct {v1, v0}, Ljdbm/helper/IterationException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

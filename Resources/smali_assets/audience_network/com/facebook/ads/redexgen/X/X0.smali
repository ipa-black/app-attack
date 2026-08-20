.class public final Lcom/facebook/ads/redexgen/X/X0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordFileBasedFetch"
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/8o;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Z

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Wz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wz;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/8f;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66011
    .local p0, "this":Lcom/facebook/ads/redexgen/X/X0;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    .local p2, "fetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/Wz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66012
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Z

    .line 66013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:Ljava/util/List;

    .line 66014
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8f;

    .line 66015
    .local v0, "fetch":Lcom/facebook/ads/redexgen/X/8f;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8f;->A01()Lcom/facebook/ads/redexgen/X/8e;

    move-result-object v5

    .line 66016
    .local v1, "fileFetchResult":Lcom/facebook/ads/redexgen/X/8e;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:Ljava/util/List;

    .line 66017
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8f;->A00()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8e;->A01()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8c;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/8c;-><init>(II)V

    .line 66018
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8e;->A00()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8e;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    .line 66019
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8e;->A00()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8o;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/8o;-><init>(Lcom/facebook/ads/redexgen/X/8c;II)V

    .line 66020
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66021
    .end local v0    # "fetch":Lcom/facebook/ads/redexgen/X/8f;
    .end local v1    # "fileFetchResult":Lcom/facebook/ads/redexgen/X/8e;
    goto :goto_0

    .line 66022
    :cond_0
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/8o;
    .locals 2

    .line 66023
    .local p0, "this":Lcom/facebook/ads/redexgen/X/X0;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8o;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/8o;
    .locals 2

    .line 66024
    .local p0, "this":Lcom/facebook/ads/redexgen/X/X0;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8o;

    return-object v0
.end method

.method public final A4l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8t;
        }
    .end annotation

    .line 66025
    .local p0, "this":Lcom/facebook/ads/redexgen/X/X0;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/Wz;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Wz;->A04(Lcom/facebook/ads/redexgen/X/Wz;Lcom/facebook/ads/redexgen/X/X0;)V

    .line 66026
    return-void
.end method

.method public final declared-synchronized A5P()I
    .locals 3

    .local p1, "this":Lcom/facebook/ads/redexgen/X/X0;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 66027
    const/4 v2, 0x0

    .line 66028
    .local v0, "count":I
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8o;

    .line 66029
    .local v2, "location":Lcom/facebook/ads/redexgen/X/8o;
    iget v0, v0, Lcom/facebook/ads/redexgen/X/8o;->A01:I

    add-int/2addr v2, v0

    .line 66030
    .end local v2    # "location":Lcom/facebook/ads/redexgen/X/8o;
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66031
    .end local p1
    :cond_0
    monitor-exit p0

    return v2

    .line 66032
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A9h()Z
    .locals 1

    .line 66033
    .local p0, "this":Lcom/facebook/ads/redexgen/X/X0;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Z

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66034
    .local p0, "this":Lcom/facebook/ads/redexgen/X/X0;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/Wz;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Wz;->A07(Lcom/facebook/ads/redexgen/X/Wz;Lcom/facebook/ads/redexgen/X/X0;)Z

    .line 66035
    return-void
.end method

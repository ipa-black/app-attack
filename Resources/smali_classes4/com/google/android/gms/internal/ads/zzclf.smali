.class public final Lcom/google/android/gms/internal/ads/zzclf;
.super Lcom/google/android/gms/internal/ads/zzcjo;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbai;
.implements Lcom/google/android/gms/internal/ads/zzayg;
.implements Lcom/google/android/gms/internal/ads/zzbbs;
.implements Lcom/google/android/gms/internal/ads/zzaua;
.implements Lcom/google/android/gms/internal/ads/zzasq;


# static fields
.field public static final synthetic zzc:I


# instance fields
.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcku;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzati;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzati;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzazk;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcjw;

.field private zzj:Lcom/google/android/gms/internal/ads/zzast;

.field private zzk:Ljava/nio/ByteBuffer;

.field private zzl:Z

.field private final zzm:Ljava/lang/ref/WeakReference;

.field private zzn:Lcom/google/android/gms/internal/ads/zzcjn;

.field private zzo:I

.field private zzp:I

.field private zzq:J

.field private final zzr:Ljava/lang/String;

.field private final zzs:I

.field private final zzt:Ljava/lang/Object;

.field private final zzu:Ljava/util/ArrayList;

.field private volatile zzv:Lcom/google/android/gms/internal/ads/zzckt;

.field private final zzw:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjw;Lcom/google/android/gms/internal/ads/zzcjx;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjo;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzt:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzw:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzm:Ljava/lang/ref/WeakReference;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcku;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcku;-><init>()V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzclf;->zze:Lcom/google/android/gms/internal/ads/zzcku;

    .line 3
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbbh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxd;->zza:Lcom/google/android/gms/internal/ads/zzaxd;

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    const/4 v7, -0x1

    const-wide/16 v3, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzbbh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxd;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzbbs;I)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzf:Lcom/google/android/gms/internal/ads/zzati;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaup;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxd;->zza:Lcom/google/android/gms/internal/ads/zzaxd;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v5, p0

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaup;-><init>(Lcom/google/android/gms/internal/ads/zzaxd;Lcom/google/android/gms/internal/ads/zzavd;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaua;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzg:Lcom/google/android/gms/internal/ads/zzati;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazg;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzazg;-><init>(Lcom/google/android/gms/internal/ads/zzazl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzh:Lcom/google/android/gms/internal/ads/zzazk;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ForkedExoPlayerAdapter initialize "

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzclf;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzati;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v4, 0x1

    aput-object v9, v2, v4

    .line 9
    invoke-static {v2, v0, v8}, Lcom/google/android/gms/internal/ads/zzasu;->zza([Lcom/google/android/gms/internal/ads/zzati;Lcom/google/android/gms/internal/ads/zzazo;Lcom/google/android/gms/internal/ads/zzcku;)Lcom/google/android/gms/internal/ads/zzast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    .line 10
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzast;->zze(Lcom/google/android/gms/internal/ads/zzasq;)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzo:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzq:J

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzp:I

    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzu:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    if-eqz p3, :cond_1

    .line 12
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjx;->zzt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjx;->zzt()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_1
    const-string v0, ""

    .line 12
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzr:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 13
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjx;->zzh()I

    move-result v3

    :cond_2
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzs:I

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjj;->zzn:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zzg()V

    :cond_3
    if-eqz p3, :cond_4

    .line 17
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjx;->zzg()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    .line 18
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjx;->zzg()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzast;->zzp(I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 19
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjx;->zzf()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    .line 20
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjx;->zzf()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzast;->zzo(I)V

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjj;->zzp:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjj;->zzq:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzast;->zzh(I)V

    :cond_6
    return-void
.end method

.method private final zzY()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckt;->zzk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzclf;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ForkedExoPlayerAdapter finalize "

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzA()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclf;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzo:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzB()J
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclf;->zzY()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzt:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzu:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzq:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzu:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbac;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbac;->zze()Ljava/util/Map;

    move-result-object v3

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 6
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "content-length"

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzfxl;->zzc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 9
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-long/2addr v1, v5

    :try_start_2
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzq:J

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzq:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckt;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzC([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzclf;->zzD([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final zzD([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzk:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzl:Z

    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    aget-object p1, p1, p4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzclf;->zzp(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzayl;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    new-array p3, p3, [Lcom/google/android/gms/internal/ads/zzayl;

    :goto_0
    array-length v0, p1

    if-ge p4, v0, :cond_2

    .line 1
    aget-object v0, p1, p4

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzclf;->zzp(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzayl;

    move-result-object v0

    aput-object v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayp;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzayp;-><init>([Lcom/google/android/gms/internal/ads/zzayl;)V

    .line 3
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzast;->zzj(Lcom/google/android/gms/internal/ads/zzayl;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzclf;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final zzE()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzast;->zzl(Lcom/google/android/gms/internal/ads/zzasq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zzk()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzclf;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final zzF(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzast;->zzm(J)V

    return-void
.end method

.method public final zzG(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zze:Lcom/google/android/gms/internal/ads/zzcku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcku;->zzf(I)V

    return-void
.end method

.method public final zzH(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zze:Lcom/google/android/gms/internal/ads/zzcku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcku;->zzg(I)V

    return-void
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzcjn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzn:Lcom/google/android/gms/internal/ads/zzcjn;

    return-void
.end method

.method public final zzJ(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zze:Lcom/google/android/gms/internal/ads/zzcku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcku;->zzh(I)V

    return-void
.end method

.method public final zzK(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zze:Lcom/google/android/gms/internal/ads/zzcku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcku;->zzi(I)V

    return-void
.end method

.method public final zzL(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzast;->zzq(Z)V

    return-void
.end method

.method public final zzM(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzh:Lcom/google/android/gms/internal/ads/zzazk;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzazk;->zze(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzN(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzckr;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzckr;->zzh(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzO(Landroid/view/Surface;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzass;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzf:Lcom/google/android/gms/internal/ads/zzati;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzass;-><init>(Lcom/google/android/gms/internal/ads/zzasr;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    new-array p2, v3, [Lcom/google/android/gms/internal/ads/zzass;

    aput-object v1, p2, p1

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzast;->zzf([Lcom/google/android/gms/internal/ads/zzass;)V

    return-void

    :cond_1
    new-array p2, v3, [Lcom/google/android/gms/internal/ads/zzass;

    aput-object v1, p2, p1

    .line 2
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzast;->zzn([Lcom/google/android/gms/internal/ads/zzass;)V

    return-void
.end method

.method public final zzP(FZ)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzass;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzg:Lcom/google/android/gms/internal/ads/zzati;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzass;-><init>(Lcom/google/android/gms/internal/ads/zzasr;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzass;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzn([Lcom/google/android/gms/internal/ads/zzass;)V

    return-void
.end method

.method public final zzQ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zzr()V

    return-void
.end method

.method public final zzR()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic zzS(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzazt;
    .locals 6

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 1
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzckr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 2
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzd:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzf:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzi:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzckr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbai;III)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzw:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method final synthetic zzT(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzazt;
    .locals 8

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p0

    .line 1
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzazx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 2
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzd:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzf:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzazx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbat;Lcom/google/android/gms/internal/ads/zzbai;IIZLcom/google/android/gms/internal/ads/zzbab;)V

    return-object p2
.end method

.method final synthetic zzU(Lcom/google/android/gms/internal/ads/zzazs;)Lcom/google/android/gms/internal/ads/zzazt;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzckt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzd:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazs;->zza()Lcom/google/android/gms/internal/ads/zzazt;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzr:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzs:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzclb;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzclb;-><init>(Lcom/google/android/gms/internal/ads/zzclf;)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzckt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazt;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzclb;[B)V

    return-object v8
.end method

.method final synthetic zzV(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzn:Lcom/google/android/gms/internal/ads/zzcjn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zzi(ZJ)V

    :cond_0
    return-void
.end method

.method public final zzW(Lcom/google/android/gms/internal/ads/zzazt;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzo:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzo:I

    return-void
.end method

.method public final zzX(Lcom/google/android/gms/internal/ads/zzazt;Lcom/google/android/gms/internal/ads/zzazv;)V
    .locals 2

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzbac;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzt:Ljava/lang/Object;

    .line 2
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzu:Ljava/util/ArrayList;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbac;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzckt;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzckt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzm:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjx;

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjj;->zzbF:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzckt;->zzh()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "gcacheHit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzckt;->zzj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gcacheDownloaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzckt;->zzi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzclc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(Lcom/google/android/gms/internal/ads/zzcjx;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zza(Z)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzath;)V
    .locals 0

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzasp;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzn:Lcom/google/android/gms/internal/ads/zzcjn;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzk(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final zzd(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzn:Lcom/google/android/gms/internal/ads/zzcjn;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcjn;->zzm(I)V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzato;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzaza;Lcom/google/android/gms/internal/ads/zzazm;)V
    .locals 0

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjx;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjj;->zzbF:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "audioMime"

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatd;->zze:Ljava/lang/String;

    .line 5
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioSampleMime"

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatd;->zzf:Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioCodec"

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatd;->zzc:Ljava/lang/String;

    .line 7
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 8
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcjx;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzi(Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzn:Lcom/google/android/gms/internal/ads/zzcjn;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzcjw;->zzl:Z

    if-eqz v1, :cond_0

    const-string v1, "onLoadException"

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzl(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string v1, "onLoadError"

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzk(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final synthetic zzj(Ljava/lang/Object;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzo:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzo:I

    return-void
.end method

.method public final bridge synthetic zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzazv;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzclf;->zzX(Lcom/google/android/gms/internal/ads/zzazt;Lcom/google/android/gms/internal/ads/zzazv;)V

    return-void
.end method

.method public final zzl(IJ)V
    .locals 0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzp:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzp:I

    return-void
.end method

.method public final zzm(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzn:Lcom/google/android/gms/internal/ads/zzcjn;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzv()V

    :cond_0
    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjx;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjj;->zzbF:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzatd;->zzl:F

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frameRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzatd;->zzb:I

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bitRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzatd;->zzj:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzatd;->zzk:I

    new-instance v4, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "resolution"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "videoMime"

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatd;->zze:Ljava/lang/String;

    .line 8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "videoSampleMime"

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatd;->zzf:Ljava/lang/String;

    .line 9
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "videoCodec"

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatd;->zzc:Ljava/lang/String;

    .line 10
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcjx;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzo(IIIF)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzn:Lcom/google/android/gms/internal/ads/zzcjn;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjn;->zzC(II)V

    :cond_0
    return-void
.end method

.method final zzp(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzayl;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzayh;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzk:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzk:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckv;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzckv;-><init>([B)V

    :cond_0
    move-object v2, v0

    goto/16 :goto_2

    .line 2
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjj;->zzbO:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjj;->zzbF:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzj:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 5
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzo:Z

    if-eqz v2, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckw;

    .line 6
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzckw;-><init>(Lcom/google/android/gms/internal/ads/zzclf;Ljava/lang/String;Z)V

    goto :goto_1

    .line 7
    :cond_5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzi:I

    if-lez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckx;

    .line 8
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzckx;-><init>(Lcom/google/android/gms/internal/ads/zzclf;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcky;

    .line 9
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzcky;-><init>(Lcom/google/android/gms/internal/ads/zzclf;Ljava/lang/String;Z)V

    .line 6
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 10
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcjw;->zzj:Z

    if-eqz p2, :cond_7

    new-instance p2, Lcom/google/android/gms/internal/ads/zzckz;

    .line 11
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzckz;-><init>(Lcom/google/android/gms/internal/ads/zzclf;Lcom/google/android/gms/internal/ads/zzazs;)V

    move-object v0, p2

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzk:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzk:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzk:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcla;-><init>(Lcom/google/android/gms/internal/ads/zzazs;[B)V

    move-object v2, v1

    .line 17
    :goto_2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjj;->zzm:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcld;->zza:Lcom/google/android/gms/internal/ads/zzcld;

    goto :goto_3

    .line 19
    :cond_8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcle;->zza:Lcom/google/android/gms/internal/ads/zzcle;

    :goto_3
    move-object v3, p2

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 19
    iget v4, p2, Lcom/google/android/gms/internal/ads/zzcjw;->zzk:I

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    iget v8, p2, Lcom/google/android/gms/internal/ads/zzcjw;->zzg:I

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzayh;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/zzavi;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzayg;Ljava/lang/String;I)V

    return-object v9
.end method

.method final synthetic zzq(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzazt;
    .locals 9

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 1
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzclj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzi:Lcom/google/android/gms/internal/ads/zzcjw;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzd:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzf:I

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzp:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzq:J

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzclj;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbai;IIJJ)V

    return-object p2
.end method

.method public final zzr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzp:I

    return v0
.end method

.method public final zzt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zza()I

    move-result v0

    return v0
.end method

.method public final zzv()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzw()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzo:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zzx()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclf;->zzY()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckt;->zzj()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzo:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzv:Lcom/google/android/gms/internal/ads/zzckt;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzckt;->zze()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzy()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzz()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzj:Lcom/google/android/gms/internal/ads/zzast;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

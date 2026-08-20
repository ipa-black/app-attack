.class final Lcom/google/android/gms/internal/ads/zzgzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgzv;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhah;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzv;->zza:Lcom/google/android/gms/internal/ads/zzgzv;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzf;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zzb:Lcom/google/android/gms/internal/ads/zzhah;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzv;->zza:Lcom/google/android/gms/internal/ads/zzgzv;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhag;
    .locals 2

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgyn;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhag;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zzb:Lcom/google/android/gms/internal/ads/zzhah;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhag;

    move-result-object v1

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgyn;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyn;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhag;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

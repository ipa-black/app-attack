.class public abstract Lcom/google/android/gms/internal/ads/zzgaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgaj;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgaj;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgaj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgaj;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgai;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgai;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgaj;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgai;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgai;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgaj;->zzc:Lcom/google/android/gms/internal/ads/zzgaj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/ads/zzgaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgaj;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    return-object v0
.end method

.method static synthetic zzh()Lcom/google/android/gms/internal/ads/zzgaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgaj;->zzc:Lcom/google/android/gms/internal/ads/zzgaj;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/ads/zzgaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgaj;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/ads/zzgaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgaj;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb(II)Lcom/google/android/gms/internal/ads/zzgaj;
.end method

.method public abstract zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgaj;
.end method

.method public abstract zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgaj;
.end method

.method public abstract zze(ZZ)Lcom/google/android/gms/internal/ads/zzgaj;
.end method

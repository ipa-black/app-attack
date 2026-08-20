.class public final enum Lcom/google/android/gms/internal/ads/zzfkw;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfkw;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfkw;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfkw;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzfkw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkw;

    const-string v1, "Rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfkw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkw;->zza:Lcom/google/android/gms/internal/ads/zzfkw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkw;

    const-string v2, "Interstitial"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfkw;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfkw;->zzb:Lcom/google/android/gms/internal/ads/zzfkw;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfkw;

    const-string v3, "AppOpen"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfkw;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfkw;->zzc:Lcom/google/android/gms/internal/ads/zzfkw;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/ads/zzfkw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkw;->zzd:[Lcom/google/android/gms/internal/ads/zzfkw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfkw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkw;->zzd:[Lcom/google/android/gms/internal/ads/zzfkw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfkw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfkw;

    return-object v0
.end method

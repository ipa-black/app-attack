.class public final enum Lcom/google/android/gms/internal/ads/zzfpz;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfpz;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfpz;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfpz;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzfpz;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzfpz;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpz;

    const-string v1, "VIDEO_CONTROLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpz;->zza:Lcom/google/android/gms/internal/ads/zzfpz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpz;

    const-string v2, "CLOSE_AD"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfpz;->zzb:Lcom/google/android/gms/internal/ads/zzfpz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfpz;

    const-string v3, "NOT_VISIBLE"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpz;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfpz;->zzc:Lcom/google/android/gms/internal/ads/zzfpz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfpz;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfpz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfpz;->zzd:Lcom/google/android/gms/internal/ads/zzfpz;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpz;->zze:[Lcom/google/android/gms/internal/ads/zzfpz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfpz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpz;->zze:[Lcom/google/android/gms/internal/ads/zzfpz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfpz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfpz;

    return-object v0
.end method

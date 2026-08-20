.class public final enum Lcom/google/android/gms/internal/ads/zzebr;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzebr;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzebr;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzebr;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzebr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebr;

    const-string v1, "AD_REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzebr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzebr;->zza:Lcom/google/android/gms/internal/ads/zzebr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebr;

    const-string v2, "AD_LOADED"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzebr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzebr;->zzb:Lcom/google/android/gms/internal/ads/zzebr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebr;

    const-string v3, "AD_LOAD_FAILED"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzebr;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzebr;->zzc:Lcom/google/android/gms/internal/ads/zzebr;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/ads/zzebr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzebr;->zzd:[Lcom/google/android/gms/internal/ads/zzebr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzebr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebr;->zzd:[Lcom/google/android/gms/internal/ads/zzebr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzebr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzebr;

    return-object v0
.end method

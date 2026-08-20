.class public final synthetic Lcom/google/android/gms/internal/ads/zzcwc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcwh;

.field public final synthetic zzb:I

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcwh;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zza:Lcom/google/android/gms/internal/ads/zzcwh;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zza:Lcom/google/android/gms/internal/ads/zzcwh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcwh;->zzh(II)V

    return-void
.end method

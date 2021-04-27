.class public interface abstract annotation Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "SAFE_PARCELABLE_NULL_STRING"
        defaultValueUnchecked = "SAFE_PARCELABLE_NULL_STRING"
        getter = "SAFE_PARCELABLE_NULL_STRING"
        type = "SAFE_PARCELABLE_NULL_STRING"
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Field"
.end annotation


# virtual methods
.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract defaultValueUnchecked()Ljava/lang/String;
.end method

.method public abstract getter()Ljava/lang/String;
.end method

.method public abstract id()I
.end method

.method public abstract type()Ljava/lang/String;
.end method

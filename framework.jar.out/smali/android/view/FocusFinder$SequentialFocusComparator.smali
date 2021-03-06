.class final Landroid/view/FocusFinder$SequentialFocusComparator;
.super Ljava/lang/Object;
.source "FocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SequentialFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFirstRect:Landroid/graphics/Rect;

.field private mRoot:Landroid/view/ViewGroup;

.field private final mSecondRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    .line 643
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 641
    invoke-direct {p0}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>()V

    return-void
.end method

.method private getRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "view"
    .parameter "rect"

    .prologue
    .line 687
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 688
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 689
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 655
    if-ne p1, p2, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 659
    :cond_1
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 660
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v3}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 662
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_2

    move v0, v1

    .line 663
    goto :goto_0

    .line 664
    :cond_2
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_3

    move v0, v2

    .line 665
    goto :goto_0

    .line 666
    :cond_3
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_4

    move v0, v1

    .line 667
    goto :goto_0

    .line 668
    :cond_4
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_5

    move v0, v2

    .line 669
    goto :goto_0

    .line 670
    :cond_5
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_6

    move v0, v1

    .line 671
    goto :goto_0

    .line 672
    :cond_6
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_7

    move v0, v2

    .line 673
    goto :goto_0

    .line 674
    :cond_7
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ge v3, v4, :cond_8

    move v0, v1

    .line 675
    goto :goto_0

    .line 676
    :cond_8
    iget-object v1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v1, v3, :cond_0

    move v0, v2

    .line 677
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 641
    check-cast p1, Landroid/view/View;

    .end local p1
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/view/FocusFinder$SequentialFocusComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    .line 648
    return-void
.end method

.method public setRoot(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 651
    iput-object p1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    .line 652
    return-void
.end method

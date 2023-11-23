import { ComponentFixture, TestBed } from '@angular/core/testing';
import { SharedWebUtilsComponent } from './shared-web-utils.component';

describe('SharedWebUtilsComponent', () => {
  let component: SharedWebUtilsComponent;
  let fixture: ComponentFixture<SharedWebUtilsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [SharedWebUtilsComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(SharedWebUtilsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
